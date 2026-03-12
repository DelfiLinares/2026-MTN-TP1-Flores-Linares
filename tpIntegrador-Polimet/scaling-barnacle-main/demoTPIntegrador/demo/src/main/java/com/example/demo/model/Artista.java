package com.example.demo.model;

import com.example.demo.model.Obra;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idArtista;

    private String nombre;
    private String pais;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    @OneToMany(mappedBy = "artista")
    @JsonManagedReference("artista-obras")
    private List<com.example.demo.model.Obra> obras;

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

    public List<com.example.demo.model.Obra> getObras() {
        return obras;
    }

    public void setObras(List<Obra> obras) {
        this.obras = obras;
    }

    @Override
    public String toString() {
        return "Artista{" +
                "idArtista=" + idArtista +
                ", nombre='" + nombre + '\'' +
                ", pais='" + pais + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", obras=" + obras +
                '}';
    }
}
