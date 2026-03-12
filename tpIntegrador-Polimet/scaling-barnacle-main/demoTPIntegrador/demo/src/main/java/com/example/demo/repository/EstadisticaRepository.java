package com.example.demo.repository;

import com.example.demo.model.Estadistica;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

@Repository
public interface EstadisticaRepository extends JpaRepository<Estadistica, Long> {

    @Query(value = "CALL sp_top10_obras_por_rango(:desde, :hasta)", nativeQuery = true)
    List<Object[]> obtenerTopObras(@Param("desde") String desde, @Param("hasta") String hasta);
}
