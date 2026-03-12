package com.example.demo.controller;
import com.example.demo.dto.ReservaRequest;
import com.example.demo.model.Evento;
import com.example.demo.model.InformacionMuseo;
import com.example.demo.model.Ticket;
import com.example.demo.model.Usuario;
import com.example.demo.service.EventoService;
import com.example.demo.service.HomeService;
import com.example.demo.service.TicketService;
import com.example.demo.service.UsuarioService;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;


import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

//PUNTO 5


@RestController
@RequestMapping("/api/tickets")
@CrossOrigin(origins = "*")
public class TicketController {

    private final TicketService ticketService;
    private final UsuarioService usuarioService;
    private final HomeService homeService;
    private final EventoService eventoService;

    public TicketController(TicketService ticketService, UsuarioService usuarioService,
                            HomeService homeService, EventoService eventoService) {
        this.ticketService = ticketService;
        this.usuarioService = usuarioService;
        this.homeService = homeService;
        this.eventoService = eventoService;
    }

    @GetMapping
    public ResponseEntity<List<Ticket>> listar() {
        return ResponseEntity.ok(ticketService.listarTickets());
    }

    @PostMapping("/reservar/{idInfoMuseo}/{idEvento}")
    public ResponseEntity<?> reservar(@PathVariable Long idInfoMuseo,
                                      @PathVariable Long idEvento,
                                      @RequestBody ReservaRequest request) {

        if (request == null || request.getIdUsuario() == null ||
                request.getFecha() == null || request.getHora() == null) {

            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("El JSON enviado está vacío o incompleto"));
        }

        try {

            Usuario usuario = usuarioService.obtenerPorId(request.getIdUsuario());
            InformacionMuseo infoMuseo = homeService.obtenerPorId(idInfoMuseo);
            Evento evento = eventoService.obtenerPorId(idEvento);

            if (usuario == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND)
                        .body(new ErrorResponse("Usuario no encontrado"));
            }

            if (infoMuseo == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND)
                        .body(new ErrorResponse("Información de museo no encontrada"));
            }

            if (evento == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND)
                        .body(new ErrorResponse("Evento no encontrado"));
            }

            LocalDate fechaReserva = LocalDate.parse(request.getFecha());
            LocalTime horaReserva = LocalTime.parse(request.getHora());

            Ticket ticket = new Ticket(
                   null,
                    usuario,
                    infoMuseo,
                    evento,
                    fechaReserva,
                    horaReserva,
                    request.getCantidadPersonas(),
                    Ticket.EstadoTicket.ACTIVA
            );

            Ticket nuevoTicket = ticketService.reservar(ticket);

            return ResponseEntity.ok(nuevoTicket);

        } catch (Exception e) {
            return ResponseEntity.badRequest()
                    .body(new ErrorResponse("Error al procesar la reserva"));
        }
    }
}