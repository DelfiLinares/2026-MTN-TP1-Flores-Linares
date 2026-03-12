package com.example.demo.service;

import com.example.demo.model.Ticket;
import com.example.demo.model.InformacionMuseo;
import com.example.demo.repository.TicketRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketService {

    private final TicketRepository ticketRepository;
    private final HomeService homeService;

    public TicketService(TicketRepository ticketRepository, HomeService homeService) {
        this.ticketRepository = ticketRepository;
        this.homeService = homeService;
    }

    public List<Ticket> listarTickets() {
        return ticketRepository.findAll();
    }

    public Ticket reservar(Ticket ticket) {

        if (ticket.getEvento() == null) {

            InformacionMuseo info = homeService.obtenerPorId(1L);
            int maxCapacity = info.getCapacidad();

            List<Ticket> existingTickets = ticketRepository.findByFechaReserva(
                    ticket.getFechaReserva()
            );

            int currentlyReserved = existingTickets.stream()
                    .filter(t -> t.getEstado() == Ticket.EstadoTicket.ACTIVA)
                    .mapToInt(Ticket::getCantidadPersonas)
                    .sum();

            int requested = ticket.getCantidadPersonas();
            if (currentlyReserved + requested > maxCapacity) {
                throw new RuntimeException("Capacidad máxima del museo excedida para la fecha seleccionada. Total reservado: " + currentlyReserved + ", Máximo: " + maxCapacity);
            }
        }

        ticket.setEstado(Ticket.EstadoTicket.ACTIVA);
        return ticketRepository.save(ticket);
    }
}