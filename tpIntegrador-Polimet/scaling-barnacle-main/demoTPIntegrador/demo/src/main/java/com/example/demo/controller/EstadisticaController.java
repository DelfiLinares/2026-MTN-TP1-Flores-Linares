package com.example.demo.controller;

import com.example.demo.dto.TopObraDto;
import com.example.demo.repository.EstadisticaRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/estadisticas")
@CrossOrigin(origins = "*") // Aseguramos CORS aquí también
public class EstadisticaController {

    private final EstadisticaRepository estadisticaRepository;

    public EstadisticaController(EstadisticaRepository estadisticaRepository) {
        this.estadisticaRepository = estadisticaRepository;
    }

    @GetMapping("/top-obras")
    public ResponseEntity<?> topObras(
            @RequestParam String desde,
            @RequestParam String hasta
    ) {
        try {

            if (desde == null || desde.isBlank() || hasta == null || hasta.isBlank()) {
                return ResponseEntity.badRequest()
                        .body(new ErrorResponse("Las fechas 'desde' y 'hasta' son obligatorias"));
            }

            LocalDate d = LocalDate.parse(desde.trim());
            LocalDate h = LocalDate.parse(hasta.trim());

            List<Object[]> rows = estadisticaRepository.obtenerTopObras(desde.trim(), hasta.trim());

            List<TopObraDto> result = new ArrayList<>();

            for (Object[] row : rows) {
                Long id = row[0] == null ? null : ((Number) row[0]).longValue();
                String nombre = row[1] == null ? null : row[1].toString();
                Double promedio = row[2] == null ? 0.0 : ((Number) row[2]).doubleValue();
                Integer votos = row[3] == null ? 0 : ((Number) row[3]).intValue();

                result.add(new TopObraDto(id, nombre, promedio, votos));
            }

            return ResponseEntity.ok(result);

        } catch (java.time.format.DateTimeParseException e) {
            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("Formato de fecha inválido. Utiliza YYYY-MM-DD"));
        } catch (Exception e) {
            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("Error al procesar la estadística"));
        }
    }
}