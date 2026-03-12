package com.example.demo.service;

import com.example.demo.model.Obra;
import com.example.demo.model.Usuario;
import com.example.demo.model.Valoracion;
import com.example.demo.repository.ValoracionRepository;
import com.example.demo.repository.UsuarioRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class ValoracionesService {

    private final ValoracionRepository valoracionRepository;
    private final ObraService obraService;
    private final UsuarioRepository usuarioRepository;

    public ValoracionesService(ValoracionRepository valoracionRepository, ObraService obraService, UsuarioRepository usuarioRepository){
        this.valoracionRepository = valoracionRepository;
        this.obraService = obraService;
        this.usuarioRepository = usuarioRepository;
    }

    public Valoracion guardarValoracion(Valoracion valoracion){
        return valoracionRepository.save(valoracion);
    }

    public Valoracion votarObra(Long idObra, Long idUsuario, Integer puntaje, String comentario) {
        Obra obra = obraService.obtenerPorId(idObra);
        Usuario usuario = usuarioRepository.findById(idUsuario).orElse(null);

        if (obra == null) {
            throw new RuntimeException("Obra no encontrada con ID: " + idObra);
        }
        if (usuario == null) {
            throw new RuntimeException("Usuario no encontrado con ID: " + idUsuario);
        }

        // Usando el constructor de todos los argumentos (@AllArgsConstructor)
        Valoracion valoracion = new Valoracion(null, usuario, obra, puntaje, comentario, LocalDate.now());

        return valoracionRepository.save(valoracion);
    }

    public List<Valoracion> listarPorObraId(Obra obra){
        return valoracionRepository.findByObra(obra);
    }

    public List<Valoracion> obtenerPorRango(LocalDate d, LocalDate h) {
        return valoracionRepository.findByFechaBetween(d, h);
    }

    public List<Valoracion> obtenerPorObra(Long id) {
        Obra obra = obraService.obtenerPorId(id);
        if (obra == null) return List.of();
        return valoracionRepository.findByObra(obra);
    }
}