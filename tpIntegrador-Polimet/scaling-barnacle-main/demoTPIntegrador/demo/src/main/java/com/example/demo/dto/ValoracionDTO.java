package com.example.demo.dto;

//DTO fabricado para el punto 4, el unico atributo sacado fue el ID

import com.example.demo.model.Obra;
import com.example.demo.model.Usuario;

import java.time.LocalDate;

public class ValoracionDTO {
    Usuario usuario;
    Obra obra;
    Integer puntaje;
    String comentario;
    LocalDate fechaValoracion;

    public ValoracionDTO() {}

    public void TopObraDto(Usuario usuario, Obra obra, Integer puntaje, String comentario, LocalDate fechaValoracion) {
        this.usuario=usuario;
        this.obra=obra;
        this.puntaje=puntaje;
        this.comentario=comentario;
        this.fechaValoracion=fechaValoracion;
    }

     public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Obra getObra() {
        return obra;
    }

    public void setObra(Obra obra) {
        this.obra = obra;
    }

    public Integer getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(Integer puntaje) {
        this.puntaje = puntaje;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public LocalDate getFechaValoracion() {
        return fechaValoracion;
    }

    public void setFechaValoracion(LocalDate fechaValoracion) {
        this.fechaValoracion = fechaValoracion;
    }
   
}