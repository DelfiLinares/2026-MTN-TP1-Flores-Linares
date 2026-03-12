package com.example.demo.repository;

import com.example.demo.model.Evento;
import com.example.demo.model.Piso;
import org.springframework.data.jpa.repository.JpaRepository;
import java.time.LocalDateTime;
import java.util.List;

public interface EventoRepository extends JpaRepository<Evento, Long> {
    List<Evento> findByFechaInicioAfter(LocalDateTime now);
}
