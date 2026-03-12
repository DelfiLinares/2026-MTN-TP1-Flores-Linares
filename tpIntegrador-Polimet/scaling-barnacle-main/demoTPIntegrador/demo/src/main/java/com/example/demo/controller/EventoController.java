package com.example.demo.controller;

import com.example.demo.dto.EventoDTO;
import com.example.demo.model.Evento;
import com.example.demo.service.EventoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/eventos")
@CrossOrigin(origins = "*")
public class EventoController {

    private final EventoService eventoService;

    public EventoController(EventoService eventoService) {
        this.eventoService = eventoService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> obtener(@PathVariable Long id) {

        Evento e = eventoService.obtenerPorId(id);

        if (e == null) {
            return ResponseEntity.status(404)
                    .body(new ErrorResponse("Evento no encontrado"));
        }

        EventoDTO dto = new EventoDTO(
                e.getIdEvento(),
                e.getNombre(),
                e.getDescripcion()
        );

        return ResponseEntity.ok(dto);
    }

    @GetMapping
    public ResponseEntity<List<EventoDTO>> listarEventos() {

        List<Evento> eventos = eventoService.obtenerTodos();

        List<EventoDTO> eventosDTO = eventos.stream()
                .map(e -> new EventoDTO(
                        e.getIdEvento(),
                        e.getNombre(),
                        e.getDescripcion()
                ))
                .toList();

        return ResponseEntity.ok(eventosDTO);
    }
}