package com.example.demo.repository;

import com.example.demo.model.Valoracion;
import com.example.demo.model.Obra;
import org.springframework.data.jpa.repository.JpaRepository;
import java.time.LocalDate;
import java.util.List;

public interface ValoracionRepository extends JpaRepository<Valoracion, Long> {
    List<Valoracion> findByObra(Obra obra);

    List<Valoracion> findByFechaBetween(LocalDate fechaInicio, LocalDate fechaFin);
}