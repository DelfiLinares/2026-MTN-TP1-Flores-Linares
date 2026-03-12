package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="pisos")
public class Piso {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPiso;

    private String nombre;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    @OneToMany(mappedBy = "piso", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Sala> salas;

    @OneToMany(mappedBy = "piso", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Seccion> secciones;

    public Long getIdPiso() {
        return idPiso;
    }

    public void setIdPiso(Long idPiso) {
        this.idPiso = idPiso;
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

    public List<Sala> getSalas() {
        return salas;
    }

    public void setSalas(List<Sala> salas) {
        this.salas = salas;
    }

    public List<Seccion> getSecciones() {
        return secciones;
    }

    public void setSecciones(List<Seccion> secciones) {
        this.secciones = secciones;
    }

    @Override
    public String toString() {
        return "Piso{" +
                "idPiso=" + idPiso +
                ", nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", salas=" + salas +
                ", secciones=" + secciones +
                '}';
    }
}