USE `polimet_db`;
DROP TRIGGER IF EXISTS tr_valoraciones_after_insert;
DROP TRIGGER IF EXISTS tr_valoraciones_after_update;
DROP TRIGGER IF EXISTS tr_valoraciones_after_delete;

DROP TRIGGER IF EXISTS tr_tickets_before_insert;
DROP TRIGGER IF EXISTS tr_tickets_before_update;

DROP PROCEDURE IF EXISTS sp_top10_obras_por_rango;
DROP PROCEDURE IF EXISTS sp_promedio_valoraciones_por_membresia;

DROP FUNCTION IF EXISTS fn_total_personas_reservadas_evento;

DROP EVENT IF EXISTS ev_invalida_tickets_vencidos_midnight;
DROP EVENT IF EXISTS ev_insertar_recordatorios_6am;

DELIMITER $$
CREATE FUNCTION fn_total_personas_reservadas_evento(p_id_evento INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE v_total INT DEFAULT 0;
  SELECT IFNULL(SUM(cantidad_personas),0)
    INTO v_total
    FROM tickets
    WHERE id_evento = p_id_evento
      AND estado = 'activa';
  RETURN v_total;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER tr_valoraciones_after_insert
AFTER INSERT ON valoraciones
FOR EACH ROW
BEGIN
  UPDATE obras
    SET nivel_popularidad = (
      SELECT IFNULL(AVG(puntaje),0)
      FROM valoraciones
      WHERE id_obra = NEW.id_obra
    )
  WHERE id_obra = NEW.id_obra;
END$$

CREATE TRIGGER tr_valoraciones_after_update
AFTER UPDATE ON valoraciones
FOR EACH ROW
BEGIN
  IF OLD.id_obra IS NOT NULL THEN
    UPDATE obras
      SET nivel_popularidad = (
        SELECT IFNULL(AVG(puntaje),0)
        FROM valoraciones
        WHERE id_obra = OLD.id_obra
      )
    WHERE id_obra = OLD.id_obra;
  END IF;
  IF NEW.id_obra IS NOT NULL THEN
    UPDATE obras
      SET nivel_popularidad = (
        SELECT IFNULL(AVG(puntaje),0)
        FROM valoraciones
        WHERE id_obra = NEW.id_obra
      )
    WHERE id_obra = NEW.id_obra;
  END IF;
END$$

CREATE TRIGGER tr_valoraciones_after_delete
AFTER DELETE ON valoraciones
FOR EACH ROW
BEGIN
  UPDATE obras
    SET nivel_popularidad = (
      SELECT IFNULL(AVG(puntaje),0)
      FROM valoraciones
      WHERE id_obra = OLD.id_obra
    )
  WHERE id_obra = OLD.id_obra;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER tr_tickets_before_insert
BEFORE INSERT ON tickets
FOR EACH ROW
BEGIN
  DECLARE v_capacidad INT DEFAULT 0;
  DECLARE v_actual INT DEFAULT 0;
  declare message text;
  IF NEW.id_evento IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se especificó id_evento en la reserva.';
  END IF;

  SELECT capacidad INTO v_capacidad FROM eventos WHERE id_evento = NEW.id_evento;
  IF v_capacidad IS NULL THEN
    SIGNAL SQLSTATE '45000';
    SET message = 'Evento no encontrado o sin capacidad definida.';
  END IF;
  
  SELECT IFNULL(SUM(cantidad_personas),0) INTO v_actual
    FROM tickets
    WHERE id_evento = NEW.id_evento
      AND estado = 'activa';

  IF (v_actual + IFNULL(NEW.cantidad_personas,0)) > v_capacidad THEN
    SIGNAL SQLSTATE '45000';
		SET message = CONCAT('Capacidad insuficiente: capacidad=', v_capacidad, ', ya reservadas=', v_actual);
  END IF;
END$$
DELIMITER ;

-- BEFORE UPDATE
DELIMITER $$
CREATE TRIGGER tr_tickets_before_update
BEFORE UPDATE ON tickets
FOR EACH ROW
BEGIN
  DECLARE v_capacidad INT DEFAULT 0;
  DECLARE v_actual INT DEFAULT 0;
  DECLARE v_excl_old INT DEFAULT 0;
  declare message text;

  IF NEW.estado = 'activa' THEN
    SELECT capacidad INTO v_capacidad FROM eventos WHERE id_evento = NEW.id_evento;
    IF v_capacidad IS NULL THEN
      SIGNAL SQLSTATE '45000'; SET message = 'Evento no encontrado o sin capacidad definida (UPDATE).';
    END IF;

    SELECT IFNULL(SUM(cantidad_personas),0) INTO v_actual
      FROM tickets
      WHERE id_evento = NEW.id_evento
        AND estado = 'activa'
        AND id_ticket <> OLD.id_ticket;

    IF (v_actual + IFNULL(NEW.cantidad_personas,0)) > v_capacidad THEN
      SIGNAL SQLSTATE '45000';
      SET message = CONCAT('Capacidad insuficiente en UPDATE: capacidad=', v_capacidad, ', ya reservadas excluyendo este ticket=', v_actual);
    END IF;
  END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_top10_obras_por_rango(
  IN p_fecha_inicio DATE,
  IN p_fecha_fin DATE
)
BEGIN
  SELECT o.id_obra, o.nombre,
         ROUND(AVG(v.puntaje),2) AS puntaje_promedio,
         COUNT(v.id_valoracion) AS cantidad_valoraciones
  FROM obras o
  JOIN valoraciones v ON v.id_obra = o.id_obra
  WHERE v.fecha BETWEEN p_fecha_inicio AND p_fecha_fin
  GROUP BY o.id_obra, o.nombre
  HAVING COUNT(v.id_valoracion) > 0
  ORDER BY puntaje_promedio DESC
  LIMIT 10;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_promedio_valoraciones_por_membresia()
BEGIN
  SELECT m.tipo AS tipo_membresia,
         ROUND(AVG(v.puntaje),2) AS promedio_puntaje,
         COUNT(v.id_valoracion) AS cantidad_valoraciones
  FROM valoraciones v
  JOIN usuarios u ON u.id_usuario = v.id_usuario
  JOIN membresias m ON m.id_membresia = u.id_membresia
  GROUP BY m.tipo
  ORDER BY promedio_puntaje DESC;
END$$
DELIMITER ;

DELIMITER $$
DELIMITER $$


	-- correccion ejercicio e) 
CREATE EVENT ev_invalida_tickets_vencidos_midnight
ON SCHEDULE EVERY 1 DAY
STARTS (TIMESTAMP(CURDATE()) + INTERVAL 1 DAY)
DO
BEGIN
  UPDATE tickets
    SET estado = 'vencida'
    WHERE fecha_reserva < CURDATE() 
      AND estado = 'activa';       
END$$

DELIMITER ;

DELIMITER $$
CREATE EVENT ev_insertar_recordatorios_6am
ON SCHEDULE EVERY 1 DAY
STARTS (TIMESTAMP(CURDATE()) + INTERVAL 1 DAY + INTERVAL 6 HOUR)
DO
BEGIN
  DECLARE v_message TEXT;
  INSERT INTO notificaciones (id_usuario, id_ticket, mensaje, fecha_creacion)
  SELECT t.id_usuario, t.id_ticket,
         CONCAT('Recordatorio: tenés una reserva para el evento ', IFNULL(e.nombre, CONCAT('ID#',t.id_evento)),
                ' para hoy (', DATE_FORMAT(t.fecha_reserva, '%Y-%m-%d'), ') a las ', IFNULL( t.hora_reserva, '' ) ),
         NOW()
  FROM tickets t
  LEFT JOIN eventos e ON e.id_evento = t.id_evento
  WHERE t.fecha_reserva = CURRENT_DATE()
    AND t.estado = 'activa'
    AND t.usado = 0
    AND NOT EXISTS (
      SELECT 1 FROM notificaciones n
      WHERE n.id_usuario = t.id_usuario
        AND n.id_ticket = t.id_ticket
        AND DATE(n.fecha_creacion) = CURRENT_DATE()
    );
END$$
DELIMITER ;
