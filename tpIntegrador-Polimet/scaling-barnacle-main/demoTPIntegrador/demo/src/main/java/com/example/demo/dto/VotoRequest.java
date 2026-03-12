package com.example.demo.dto;

import lombok.Data;

@Data
public class VotoRequest {
    private Long idUsuario;
    private Integer puntaje;
    private String comentario;

    public VotoRequest(Long idUsuario, Integer puntaje, String comentario) {
        this.idUsuario = idUsuario;
        this.puntaje = puntaje;
        this.comentario = comentario;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
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
}