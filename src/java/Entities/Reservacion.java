/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import Entities.Vuelo;
import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class Reservacion implements Serializable {
    
    
    
    private String id_reservacion;
    private Vuelo vuelo;
    private Perfil perfil;
    private ArrayList asientos;
    private int cantAsientos;
    
    
    
    
    public Reservacion(String id_reservacion,Vuelo vuelo,Perfil perfil,int cantAsientos){
    this.id_reservacion= id_reservacion;
    this.vuelo= vuelo;
    this.perfil= perfil; 
    this.asientos= new ArrayList<Asiento>();
    this.cantAsientos= cantAsientos;
    }

    public int getCantAsientos() {
        return cantAsientos;
    }

    public void setCantAsientos(int cantAsientos) {
        this.cantAsientos = cantAsientos;
    }
    
    public Reservacion(Vuelo vuelo,Perfil perfil, int cantAsientos ){
    this.id_reservacion= "";
    this.vuelo= vuelo;
    this.perfil= perfil;
    this.asientos= new ArrayList<Asiento>();
    this.cantAsientos= cantAsientos;

    
    }

    public String getId_reservacion() {
        return id_reservacion;
    }

    public void setId_reservacion(String id_reservacion) {
        this.id_reservacion = id_reservacion;
    }

    public Vuelo getVuelo() {
        return vuelo;
    }

    public void setVuelo(Vuelo vuelo) {
        this.vuelo = vuelo;
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }

    public ArrayList getAsientos() {
        return asientos;
    }

    public void setAsientos(ArrayList asientos) {
        this.asientos = asientos;
    }
    
    
}
