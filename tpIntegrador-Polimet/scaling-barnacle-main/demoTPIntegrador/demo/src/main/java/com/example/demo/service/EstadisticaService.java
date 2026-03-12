package com.example.demo.service;

import com.example.demo.dto.TopObraDto;
import com.example.demo.model.Obra;
import com.example.demo.model.Valoracion;
import com.example.demo.repository.ValoracionRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.*;

@Service
public class EstadisticaService {

    private final ValoracionRepository valoracionRepository;

    public EstadisticaService(ValoracionRepository valoracionRepository) {
        this.valoracionRepository = valoracionRepository;
    }

    public List<TopObraDto> obtenerTop10Obras(LocalDate desde, LocalDate hasta) {

        List<Valoracion> valoraciones = valoracionRepository.findByFechaBetween(desde, hasta);

        Map<Obra, List<Integer>> mapa = new HashMap<>();

        for (Valoracion v : valoraciones) {
            mapa.putIfAbsent(v.getObra(), new ArrayList<>());
            mapa.get(v.getObra()).add(v.getPuntaje());
        }

        List<TopObraDto> lista = new ArrayList<>();

        for (Map.Entry<Obra, List<Integer>> e : mapa.entrySet()) {

            Obra obra = e.getKey();
            List<Integer> puntos = e.getValue();

            double sum = 0;
            for (Integer p : puntos) {
                sum += p;
            }

            double promedio = puntos.isEmpty() ? 0 : sum / puntos.size();

            lista.add(new TopObraDto(
                    obra.getIdObra(),
                    obra.getNombre(),
                    promedio,
                    puntos.size()
            ));
        }

        lista.sort((a, b) -> Double.compare(b.getPromedio(), a.getPromedio()));

        if (lista.size() > 10) {
            return lista.subList(0, 10);
        }

        return lista;
    }
}