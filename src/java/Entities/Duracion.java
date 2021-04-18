/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;

/**
 *
 * @author Chris
 */
public class Duracion implements Serializable {
    
   private String hora;
   private String minutos;
   private String id_Duracion;
   
   public Duracion (String hora, String minutos,String id_Duracion){
   this.hora=hora;
   this.minutos= minutos;
   this.id_Duracion= id_Duracion;
   
   }
    public Duracion (String hora, String minutos){
   this.hora=hora;
   this.minutos= minutos;
   this.id_Duracion= "";
   
   }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getMinutos() {
        return minutos;
    }

    public void setMinutos(String minutos) {
        this.minutos = minutos;
    }

    public String getId_Duracion() {
        return id_Duracion;
    }

    public void setId_Duracion(String id_Duracion) {
        this.id_Duracion = id_Duracion;
    }

    @Override
    public String toString() {
        return this.getHora() +":"+ this.minutos ;
    }
   
   
   
   
    
}
