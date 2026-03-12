package com.example.demo.dto;

public class ArtistaDTO {

    private Long idArtista;
    private String nombre;
    private String pais;
    private String descripcion;

    // Constructor vacío (OBLIGATORIO para Jackson)
    public ArtistaDTO() {
    }

    // Constructor completo
    public ArtistaDTO(Long idArtista, String nombre, String pais, String descripcion) {
        this.idArtista = idArtista;
        this.nombre = nombre;
        this.pais = pais;
        this.descripcion = descripcion;
    }

    public Long getIdArtista() {
        return idArtista;
    }

    public void setIdArtista(Long idArtista) {
        this.idArtista = idArtista;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
