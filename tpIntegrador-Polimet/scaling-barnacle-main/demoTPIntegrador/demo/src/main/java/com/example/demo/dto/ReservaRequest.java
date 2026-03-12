package com.example.demo.dto;

import lombok.Data;

@Data
public class ReservaRequest {
    private Long idUsuario;
    private String fecha;
    private String hora;
    private Integer cantidadPersonas;

    public ReservaRequest(Long idUsuario, String fecha, String hora, Integer cantidadPersonas) {
        this.idUsuario = idUsuario;
        this.fecha = fecha;
        this.hora = hora;
        this.cantidadPersonas = cantidadPersonas;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Integer getCantidadPersonas() {
        return cantidadPersonas;
    }

    public void setCantidadPersonas(Integer cantidadPersonas) {
        this.cantidadPersonas = cantidadPersonas;
    }
}