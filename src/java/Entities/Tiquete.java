/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.Date;
/**
 *
 * @author Chris
 */
public class Tiquete {
    
    private Date fecha;
    private Reservacion reservacion;
    private String id_tiquete;

    public Tiquete(Date fecha, Reservacion reservacion) {
        this.fecha = fecha;
        this.reservacion = reservacion;
        this.id_tiquete="";
    }
     public Tiquete(Date fecha, Reservacion reservacion, String id_tiquete) {
        this.fecha = fecha;
        this.reservacion = reservacion;
        this.id_tiquete= id_tiquete;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Reservacion getReservacion() {
        return reservacion;
    }

    public void setReservacion(Reservacion reservacion) {
        this.reservacion = reservacion;
    }

    public String getId_tiquete() {
        return id_tiquete;
    }

    public void setId_tiquete(String id_tiquete) {
        this.id_tiquete = id_tiquete;
    }
    
   

}
