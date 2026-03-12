package com.example.demo.repository;

import com.example.demo.model.Obra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

public interface ObraRepository extends JpaRepository<Obra, Long> {

    List<Obra> findByNombreContainingIgnoreCase(String nombre);

    List<Obra> findByEpocaContainingAndNombreContaining(String epoca, String nombre);

    @Query("SELECT o FROM Obra o WHERE " +
            "(:ubicacion IS NULL OR lower(o.sala.nombre) LIKE lower(concat('%', :ubicacion, '%'))) AND " +
            "(:epoca IS NULL OR lower(o.epoca) LIKE lower(concat('%', :epoca, '%'))) AND " +
            "(:nombre IS NULL OR lower(o.nombre) LIKE lower(concat('%', :nombre, '%'))) AND " +
            "(:popularidad IS NULL OR o.nivelPopularidad >= :popularidad)")
    List<Obra> filtrarObras(
            @Param("ubicacion") String ubicacion,
            @Param("epoca") String epoca,
            @Param("nombre") String nombre,
            @Param("popularidad") Float popularidad
    );
}
