package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

@Entity
@Table(name = "obras")
public class Obra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idObra;

    private String nombre;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    private String epoca;

    private Float nivelPopularidad;

    private String imagenUrl;

    @ManyToOne
    @JoinColumn(name = "id_artista")
    @JsonBackReference
    private Artista artista;

    @ManyToOne
    @JoinColumn(name = "id_sala")
    private Sala sala;

    @ManyToOne
    @JoinColumn(name = "id_tipo_obra")
    private TipoObra tipoObra;

    public Obra() {}

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

    public String getImagenUrl() {
        return imagenUrl;
    }

    public void setImagenUrl(String imagenUrl) {
        this.imagenUrl = imagenUrl;
    }

    public Artista getArtista() {
        return artista;
    }

    public void setArtista(Artista artista) {
        this.artista = artista;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    public TipoObra getTipoObra() {
        return tipoObra;
    }

    public void setTipoObra(TipoObra tipoObra) {
        this.tipoObra = tipoObra;
    }

    @Override
    public String toString() {
        return "Obra{" +
                "idObra=" + idObra +
                ", nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", epoca='" + epoca + '\'' +
                ", nivelPopularidad=" + nivelPopularidad +
                ", tipoObra=" + tipoObra +
                '}';
    }
}