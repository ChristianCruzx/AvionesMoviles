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
public class Asiento {
     
    private String id_vuelo;
    private int  fila;
    private int numero_col;
    private boolean ocupado;
    private String id_asiento;
    
    public Asiento(String idvuelo, int fila,int numero_col,boolean ocupado,String id_asiento){
    this.id_vuelo=idvuelo;
    this.fila= fila;
    this.numero_col= numero_col;
    this.ocupado= ocupado;
    this.id_asiento= id_asiento;
}
    public Asiento(String idvuelo, int fila,int numero_col,boolean ocupado){
    this.id_vuelo=idvuelo;
    this.fila= fila;
    this.numero_col= numero_col;
    this.ocupado= ocupado;
    this.id_asiento= "";
}

    public String getId_vuelo() {
        return id_vuelo;
    }

    public void setId_vuelo(String id_vuelo) {
        this.id_vuelo = id_vuelo;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public int getNumero_col() {
        return numero_col;
    }

    public void setNumero_col(int numero_col) {
        this.numero_col = numero_col;
    }

    public boolean isOcupado() {
        return ocupado;
    }

    public void setOcupado(boolean ocupado) {
        this.ocupado = ocupado;
    }

    public String getId_asiento() {
        return id_asiento;
    }

    public void setId_asiento(String id_asiento) {
        this.id_asiento = id_asiento;
    }
    
    
    
    
    
}
