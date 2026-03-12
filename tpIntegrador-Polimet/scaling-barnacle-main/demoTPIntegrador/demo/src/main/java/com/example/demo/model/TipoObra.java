package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="tipos_obra")
public class TipoObra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTipoObra;

    private String nombre;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    @OneToMany(mappedBy = "tipoObra", fetch = FetchType.LAZY)
    @JsonManagedReference("tipo-obras")
    private List<Obra> obras;
}