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

//nuevos comentarios

public class TipoAvion implements Serializable {
    
    private String id_tipoAvion;
    private String annio;
    private String modelo;
    private String marca;
    private int cant_filas;
    private int cant_asientos;
    private int cant_asientos_fila;
    
 
    public TipoAvion( String id_tipoAvion,String annio,
                      String modelo,String marca,int cant_filas,
                      int cant_asientos,int cant_asientos_fila){
          this.annio=annio;
          this.id_tipoAvion=id_tipoAvion;
          this.modelo= modelo;
          this.marca= marca;
          this.cant_asientos= cant_asientos;
          this.cant_asientos_fila=cant_asientos_fila;
          this.cant_filas= cant_filas;
     
    
    
    }
    public TipoAvion( String annio,
          String modelo,String marca,int cant_filas,
          int cant_asientos,int cant_asientos_fila){
          this.annio=annio;
          this.id_tipoAvion="";
          this.modelo= modelo;
          this.marca= marca;
          this.cant_asientos= cant_asientos;
          this.cant_asientos_fila=cant_asientos_fila;
          this.cant_filas= cant_filas;
    
    }

    public String getId_tipoAvion() {
        return id_tipoAvion;
    }

    public void setId_tipoAvion(String id_tipoAvion) {
        this.id_tipoAvion = id_tipoAvion;
    }

    public String getAnnio() {
        return annio;
    }

    public void setAnnio(String annio) {
        this.annio = annio;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getCant_filas() {
        return cant_filas;
    }

    public void setCant_filas(int cant_filas) {
        this.cant_filas = cant_filas;
    }

    public int getCant_asientos() {
        return cant_asientos;
    }

    public void setCant_asientos(int cant_asientos) {
        this.cant_asientos = cant_asientos;
    }

    public int getCant_asientos_fila() {
        return cant_asientos_fila;
    }

    public void setCant_asientos_fila(int cant_asientos_fila) {
        this.cant_asientos_fila = cant_asientos_fila;
    }
    
    
    
    
}
