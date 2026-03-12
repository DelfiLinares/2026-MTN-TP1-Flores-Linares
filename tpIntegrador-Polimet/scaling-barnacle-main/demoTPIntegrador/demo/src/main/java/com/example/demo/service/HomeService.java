package com.example.demo.service;

import com.example.demo.dto.EventoDTO;
import com.example.demo.dto.HomeDTO;
import com.example.demo.model.Evento;
import com.example.demo.model.InformacionMuseo;
import com.example.demo.repository.EventoRepository;
import com.example.demo.repository.InformacionMuseoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeService {

    @Autowired
    private InformacionMuseoRepository infoRepo;

    @Autowired
    private EventoRepository eventoRepo;

    public HomeDTO obtenerHome() {

        // Buscar la información del museo (siempre ID = 1)
        InformacionMuseo info = infoRepo.findById(1L)
                .orElseThrow(() -> new RuntimeException("No hay información del museo"));

        EventoDTO eventoDTO = null;

        // Si hay evento destacado, lo buscamos
        if (info.getEventoDestacado() != null) {
            Evento evento = eventoRepo.findById(info.getEventoDestacado())
                    .orElse(null);

            if (evento != null) {
                eventoDTO = new EventoDTO(
                        evento.getIdEvento(),
                        evento.getNombre(),
                        evento.getDescripcion()
                );
            }
        }
        return new HomeDTO(
                info.getDescripcion(),
                info.getHorarios(),
                info.getFotos(),
                info.getCapacidad(),
                eventoDTO
        );
    }
    public InformacionMuseo obtenerPorId(Long id) {
        return infoRepo.findById(id).orElse(null);
    }
}
