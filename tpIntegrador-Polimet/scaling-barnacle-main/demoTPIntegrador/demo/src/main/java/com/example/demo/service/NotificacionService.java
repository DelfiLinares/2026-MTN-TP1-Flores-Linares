package com.example.demo.service;

import com.example.demo.model.Notificacion;
import com.example.demo.repository.NotificacionRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class NotificacionService {

    private final NotificacionRepository notificacionRepository;

    public NotificacionService(NotificacionRepository notificacionRepository){
        this.notificacionRepository = notificacionRepository;
    }

    public List<Notificacion> listarPorUsuario(Long idUsuario){
        return notificacionRepository.findByUsuarioIdUsuario(idUsuario);
    }

    public Notificacion crear(Notificacion n){
        return notificacionRepository.save(n);
    }
}
