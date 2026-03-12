package com.example.demo.controller;

import com.example.demo.model.Valoracion;
import com.example.demo.service.ValoracionesService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/valoraciones")
@CrossOrigin(origins = "*")
public class ValoracionController {

    private final ValoracionesService valoracionesService;

    public ValoracionController(ValoracionesService valoracionesService) {
        this.valoracionesService = valoracionesService;
    }

    @GetMapping("/obra/{id}")
    public ResponseEntity<List<Valoracion>> porObra(@PathVariable Long id) {
        List<Valoracion> lst = valoracionesService.obtenerPorObra(id);
        return ResponseEntity.ok(lst);
    }

    @GetMapping("/rango")
    public ResponseEntity<?> porRango(@RequestParam String desde, @RequestParam String hasta) {

        try {
            LocalDate d = LocalDate.parse(desde);
            LocalDate h = LocalDate.parse(hasta);
            List<Valoracion> lst = valoracionesService.obtenerPorRango(d, h);
            return ResponseEntity.ok(lst);

        } catch (Exception e) {
            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("Formato de fecha inválido"));
        }
    }
}