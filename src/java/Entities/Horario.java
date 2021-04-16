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
public class Horario {
    
    private String  dia;
    private Duracion duracion;
    
    public Horario( String dia, Duracion duracion){
        this.dia= dia;
        this.duracion= duracion;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public Duracion getDuracion() {
        return duracion;
    }

    public void setDuracion(Duracion duracion) {
        this.duracion = duracion;
    }
    
    
    
}
