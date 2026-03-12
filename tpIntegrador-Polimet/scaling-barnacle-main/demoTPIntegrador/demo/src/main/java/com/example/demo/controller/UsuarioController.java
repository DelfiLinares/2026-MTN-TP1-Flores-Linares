package com.example.demo.controller;

import com.example.demo.model.Usuario;
import com.example.demo.service.UsuarioService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/usuarios")
@CrossOrigin(origins = "*")
public class UsuarioController {
    private final UsuarioService service;

    public UsuarioController(UsuarioService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<?> registrar(@RequestBody Usuario usuario) {

        if (usuario == null || usuario.getEmail() == null || usuario.getPassword() == null) {
            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("El JSON enviado está vacío o incompleto"));
        }

        Usuario nuevo = service.registrarUsuario(usuario);
        return ResponseEntity.ok(nuevo);
    }
}