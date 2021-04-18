/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Chris
 */
public class Vuelo implements Serializable {
    
   private String id_vuelo;
   private Ruta ruta;
   private TipoAvion avion;
   private int cant_pasajeros;
   private Duracion hora_llegada;
   private double precio;
   private String fechaSalida;
   private String fechaRegreso;
   
   
   public Vuelo(String id_vuelo,Ruta ruta,TipoAvion avion,int cant_pasajeros,Duracion hora_llegada,double precio,String fechaSalida,String fechaRegreso){
   
   this.avion= avion;
   this.ruta= ruta;   
   this.id_vuelo=id_vuelo;
   this.cant_pasajeros= cant_pasajeros;
   this.hora_llegada= hora_llegada;
   this.precio= precio;
   this.fechaSalida= fechaSalida;
   this.fechaRegreso= fechaRegreso;

   
   }
   public Vuelo(Ruta ruta,TipoAvion avion,int cant_pasajeros,Duracion hora_llegada,String fechaSalida){
   
    this.ruta= ruta;   
   this.avion= avion;
   this.id_vuelo="";//la primera vez que se crea aun no lo tiene
   this.cant_pasajeros= cant_pasajeros;
   this.hora_llegada= hora_llegada;
   this.precio= 0;//calcular precio con metodo
   this.fechaSalida= fechaSalida;
   this.fechaRegreso= "";// puede no tener
   
   
   
   
   }

    public String getId_vuelo() {
        return id_vuelo;
    }

    public void setId_vuelo(String id_vuelo) {
        this.id_vuelo = id_vuelo;
    }

    public Ruta getRuta() {
        return ruta;
    }

    public void setRuta(Ruta ruta) {
        this.ruta = ruta;
    }

    public TipoAvion getAvion() {
        return avion;
    }

    public void setAvion(TipoAvion avion) {
        this.avion = avion;
    }

    public int getCant_pasajeros() {
        return cant_pasajeros;
    }

    public void setCant_pasajeros(int cant_pasajeros) {
        this.cant_pasajeros = cant_pasajeros;
    }

    public Duracion getHora_llegada() {
        return hora_llegada;
    }

    public void setHora_llegada(Duracion hora_llegada) {
        this.hora_llegada = hora_llegada;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public String getFechaRegreso() {
        return fechaRegreso;
    }

    public void setFechaRegreso(String fechaRegreso) {
        this.fechaRegreso = fechaRegreso;
    }

    @Override
    public String toString() {
        return "Vuelo{" + "id_vuelo=" + id_vuelo + ", ruta=" + ruta + ", avion=" + avion + ", cant_pasajeros=" + cant_pasajeros + ", hora_llegada=" + hora_llegada + ", precio=" + precio + ", fechaSalida=" + fechaSalida + ", fechaRegreso=" + fechaRegreso + '}';
    }
   
   
    
}
