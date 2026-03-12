//CLASE PARA MANEJAR ERRORES EN LOS CONTROLLERS

package com.example.demo.controller;

public class ErrorResponse {
    private String mensaje;

    public ErrorResponse(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}