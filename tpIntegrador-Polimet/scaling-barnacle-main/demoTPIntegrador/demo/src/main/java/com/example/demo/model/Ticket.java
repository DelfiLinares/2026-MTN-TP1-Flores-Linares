package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="tickets")
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTicket;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id_usuario")
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id_info")
    private InformacionMuseo informacionMuseo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id_evento", nullable = true)
    private Evento evento;

    private LocalDate fechaReserva;
    private LocalTime horaReserva;
    private Integer cantidadPersonas;

    @Enumerated(EnumType.STRING)
    private EstadoTicket estado;

    public enum EstadoTicket {
        ACTIVA, CANCELADA, VENCIDO
    }
}