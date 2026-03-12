package com.example.demo.dto;

public class ObraDTO {

    private Long idObra;
    private String nombre;
    private String descripcion;
    private String epoca;
    private Float nivelPopularidad;

    // Constructor completo
    public ObraDTO(Long idObra, String nombre, String descripcion, String epoca, Float nivelPopularidad) {
        this.idObra = idObra;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.epoca = epoca;
        this.nivelPopularidad = nivelPopularidad;
    }

    // Getters y Setters
    public Long getIdObra() {
        return idObra;
    }

    public void setIdObra(Long idObra) {
        this.idObra = idObra;
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

    public String getEpoca() {
        return epoca;
    }

    public void setEpoca(String epoca) {
        this.epoca = epoca;
    }

    public Float getNivelPopularidad() {
        return nivelPopularidad;
    }

    public void setNivelPopularidad(Float nivelPopularidad) {
        this.nivelPopularidad = nivelPopularidad;
    }
}
