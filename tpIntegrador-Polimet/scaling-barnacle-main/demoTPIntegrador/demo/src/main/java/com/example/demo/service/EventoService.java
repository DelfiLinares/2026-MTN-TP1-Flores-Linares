package com.example.demo.service;

import com.example.demo.model.Evento;
import com.example.demo.repository.EventoRepository;
import org.springframework.stereotype.Service;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class EventoService {

    private final EventoRepository eventoRepository;

    public EventoService(EventoRepository eventoRepository){
        this.eventoRepository = eventoRepository;
    }

    public List<Evento> listarEventosProximos(){
        return eventoRepository.findByFechaInicioAfter(LocalDateTime.now());
    }

    public Evento obtenerPorId(Long id) {
        return eventoRepository.findById(id).orElse(null);
    }
    public List<Evento> obtenerTodos() {return eventoRepository.findAll();}
}