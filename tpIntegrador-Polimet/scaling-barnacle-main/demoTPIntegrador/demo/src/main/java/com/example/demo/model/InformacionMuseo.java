package com.example.demo.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "informacion_museo")
public class InformacionMuseo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idInfo;

    private String descripcion;
    private String horarios;
    private String fotos;

    @Column(name = "evento_destacado")
    private Long eventoDestacado;

    private Integer capacidad;

    public Long getIdInfo() {
        return idInfo;
    }

    public void setIdInfo(Long idInfo) {
        this.idInfo = idInfo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getHorarios() {
        return horarios;
    }

    public void setHorarios(String horarios) {
        this.horarios = horarios;
    }

    public String getFotos() {
        return fotos;
    }

    public void setFotos(String fotos) {
        this.fotos = fotos;
    }

    public Long getEventoDestacado() {
        return eventoDestacado;
    }

    public void setEventoDestacado(Long eventoDestacado) {
        this.eventoDestacado = eventoDestacado;
    }

    public Integer getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(Integer capacidad) {
        this.capacidad = capacidad;
    }
}
