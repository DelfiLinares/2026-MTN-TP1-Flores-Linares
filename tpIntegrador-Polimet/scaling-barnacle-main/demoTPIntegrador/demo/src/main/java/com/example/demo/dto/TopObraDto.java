package com.example.demo.dto;

public class TopObraDto {
    private Long idObra;
    private String nombre;
    private Double promedio;
    private Integer votos;

    public TopObraDto() {}

    public TopObraDto(Long idObra, String nombre, Double promedio, Integer votos) {
        this.idObra = idObra;
        this.nombre = nombre;
        this.promedio = promedio;
        this.votos = votos;
    }

    public Long getIdObra() { return idObra; }
    public void setIdObra(Long idObra) { this.idObra = idObra; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public Double getPromedio() { return promedio; }
    public void setPromedio(Double promedio) { this.promedio = promedio; }

    public Integer getVotos() { return votos; }
    public void setVotos(Integer votos) { this.votos = votos; }
}
