package com.example.demo.repository;

import com.example.demo.model.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
    List<Ticket> findByFechaReservaAndHoraReserva(LocalDate fecha, LocalTime hora);
    List<Ticket> findByFechaReserva(LocalDate fecha);
}
