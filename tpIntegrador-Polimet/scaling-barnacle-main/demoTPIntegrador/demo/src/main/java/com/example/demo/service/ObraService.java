package com.example.demo.service;

import com.example.demo.model.Obra;
import com.example.demo.repository.ObraRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ObraService {

    private final ObraRepository obraRepository;

    public ObraService(ObraRepository obraRepository) {
        this.obraRepository = obraRepository;
    }

    public Obra obtenerPorId(Long id) {
        return obraRepository.findById(id).orElse(null);
    }

    public List<Obra> filtrar(String ubicacion, String epoca, String nombre, Float popularidad) {

        return obraRepository.filtrarObras(
                ubicacion != null && !ubicacion.isEmpty() ? ubicacion : null,
                epoca != null && !epoca.isEmpty() ? epoca : null,
                nombre != null && !nombre.isEmpty() ? nombre : null,
                popularidad
        );
    }
}