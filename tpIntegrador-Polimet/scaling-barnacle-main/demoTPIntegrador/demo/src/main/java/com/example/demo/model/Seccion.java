package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="secciones")
public class Seccion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idSeccion;

    private String ubicacion;
    private String epoca;
    private String nombre;
    private Float nivelPopularidad;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id_piso")
    @JsonBackReference
    private Piso piso;

    public Long getIdSeccion() {
        return idSeccion;
    }

    public void setIdSeccion(Long idSeccion) {
        this.idSeccion = idSeccion;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getEpoca() {
        return epoca;
    }

    public void setEpoca(String epoca) {
        this.epoca = epoca;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Float getNivelPopularidad() {
        return nivelPopularidad;
    }

    public void setNivelPopularidad(Float nivelPopularidad) {
        this.nivelPopularidad = nivelPopularidad;
    }

    public Piso getPiso() {
        return piso;
    }

    public void setPiso(Piso piso) {
        this.piso = piso;
    }

    @Override
    public String toString() {
        return "Seccion{" +
                "idSeccion=" + idSeccion +
                ", ubicacion='" + ubicacion + '\'' +
                ", epoca='" + epoca + '\'' +
                ", nombre='" + nombre + '\'' +
                ", nivelPopularidad=" + nivelPopularidad +
                ", piso=" + piso +
                '}';
    }
}