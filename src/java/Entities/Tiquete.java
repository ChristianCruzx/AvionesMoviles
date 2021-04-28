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
public class Tiquete  implements Serializable {
    
    private String fecha;
    private Reservacion reservacion;
    private String id_tiquete;
    private float precioTotal;
    private String tipoPago;

    public Tiquete(String fecha, Reservacion reservacion, Integer pt, String tp) {
        this.fecha = fecha;
        this.reservacion = reservacion;
        this.id_tiquete="";
        this.precioTotal=pt;
        this.tipoPago= tp;
    }
     public Tiquete(String fecha, Reservacion reservacion, String id_tiquete, Integer pt, String tp) {
        this.fecha = fecha;
        this.reservacion = reservacion;
        this.id_tiquete= id_tiquete;
         this.precioTotal=pt;
        this.tipoPago= tp;
    }

    public String getFecha() {
        return fecha;
    }

    public float getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(float precioTotal) {
        this.precioTotal = precioTotal;
    }

    public String getTipoPago() {
        return tipoPago;
    }

    public void setTipoPago(String tipoPago) {
        this.tipoPago = tipoPago;
    }

    public void setFecha(String fecha) {
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

    @Override
    public String toString() {
        return "Tiquete{" + "fecha=" + fecha + ", reservacion=" + reservacion + ", id_tiquete=" + id_tiquete + ", precioTotal=" + precioTotal + ", tipoPago=" + tipoPago + '}';
    }
    
   

}
