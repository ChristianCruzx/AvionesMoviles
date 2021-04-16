/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author Chris
 */
public class Ruta {
    
    private String id_ruta;
    private String origen;
    private String destino;
    private Duracion duracion;
    private Horario horario;
    
    public Ruta( String id_ruta, String origen, String destino, Duracion duracion, Horario horario){
    
    this.id_ruta= id_ruta;
    this.destino= destino;
    this.duracion= duracion;
    this.horario= horario;
    this.origen= origen;
    }
      public Ruta(String origen, String destino, Duracion duracion, Horario horario){
    
    this.id_ruta= "";
    this.destino= destino;
    this.duracion= duracion;
    this.horario= horario;
    this.origen= origen;
    }

    public String getId_ruta() {
        return id_ruta;
    }

    public void setId_ruta(String id_ruta) {
        this.id_ruta = id_ruta;
    }

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public Duracion getDuracion() {
        return duracion;
    }

    public void setDuracion(Duracion duracion) {
        this.duracion = duracion;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }
    
    
    
    
}
