package com.example.demo.dto;
//DTO creada para el punto 4 donde reducimos la cantidad de atributos (sacamos:
// 1. los datos de tipo Usuario y Evento por unos String que guardan solo el nombre
// 2. el atributo de la info del museo)

import com.example.demo.model.Ticket;

import java.time.LocalDate;
import java.time.LocalTime;

public class TicketDTO {

    private String nombreUsuario;
    private String nombreEvento;
    private LocalDate fechaReserva;
    private LocalTime horaReserva;
    private Integer cantidadPersonas;
    private Ticket.EstadoTicket estado;

    public TicketDTO() {
    }

    public TicketDTO(String nombreUsuario, String nombreEvento,
                     LocalDate fechaReserva, LocalTime horaReserva,
                     Integer cantidadPersonas, Ticket.EstadoTicket estado) {
        this.nombreUsuario = nombreUsuario;
        this.nombreEvento = nombreEvento;
        this.fechaReserva = fechaReserva;
        this.horaReserva = horaReserva;
        this.cantidadPersonas = cantidadPersonas;
        this.estado = estado;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getNombreEvento() {
        return nombreEvento;
    }

    public void setNombreEvento(String nombreEvento) {
        this.nombreEvento = nombreEvento;
    }

    public LocalDate getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(LocalDate fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public LocalTime getHoraReserva() {
        return horaReserva;
    }

    public void setHoraReserva(LocalTime horaReserva) {
        this.horaReserva = horaReserva;
    }

    public Integer getCantidadPersonas() {
        return cantidadPersonas;
    }

    public void setCantidadPersonas(Integer cantidadPersonas) {
        this.cantidadPersonas = cantidadPersonas;
    }

    public Ticket.EstadoTicket getEstado() {
        return estado;
    }

    public void setEstado(Ticket.EstadoTicket estado) {
        this.estado = estado;
    }
}