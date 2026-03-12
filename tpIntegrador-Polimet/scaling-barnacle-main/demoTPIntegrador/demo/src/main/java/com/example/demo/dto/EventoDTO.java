package com.example.demo.dto;

public class EventoDTO {

    private Long idEvento;
    private String nombre;
    private String descripcion;

    public EventoDTO(Long idEvento, String nombre, String descripcion) {
        this.idEvento = idEvento;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Long getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Long idEvento) {
        this.idEvento = idEvento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
