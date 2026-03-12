package com.example.demo.controller;

import com.example.demo.dto.HomeDTO;
import com.example.demo.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/home")
@CrossOrigin(origins = "*")
public class HomeController {

    @Autowired
    private HomeService homeService;

    @GetMapping
    public ResponseEntity<HomeDTO> obtenerHome() {
        return ResponseEntity.ok(homeService.obtenerHome());
    }
}
