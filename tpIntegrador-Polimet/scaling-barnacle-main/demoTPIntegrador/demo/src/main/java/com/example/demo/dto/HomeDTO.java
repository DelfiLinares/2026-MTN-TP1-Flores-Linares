package com.example.demo.dto;

public class HomeDTO {

    private String descripcion;
    private String horarios;
    private String fotos;
    private Integer capacidad;
    private EventoDTO eventoDestacado;

    public HomeDTO() {
    }

    public HomeDTO(String descripcion, String horarios, String fotos, Integer capacidad, EventoDTO eventoDestacado) {
        this.descripcion = descripcion;
        this.horarios = horarios;
        this.fotos = fotos;
        this.capacidad = capacidad;
        this.eventoDestacado = eventoDestacado;
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

    public Integer getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(Integer capacidad) {
        this.capacidad = capacidad;
    }

    public EventoDTO getEventoDestacado() {
        return eventoDestacado;
    }

    public void setEventoDestacado(EventoDTO eventoDestacado) {
        this.eventoDestacado = eventoDestacado;
    }
}
