package com.example.demo.service;

import com.example.demo.model.Piso;
import com.example.demo.model.Usuario;
import com.example.demo.repository.PisoRepository;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class PisoService {

    private final PisoRepository pisoRepository;

    public PisoService(PisoRepository pisoRepository){
        this.pisoRepository = pisoRepository;
    }

    public List<Piso> listarPisos(){
        return pisoRepository.findAll();
    }

    public Piso obtenerPorId(Long id) {
        return pisoRepository.findById(id).orElse(null);
    }

    public List<Piso> obtenerTodos() {return pisoRepository.findAll();}
}