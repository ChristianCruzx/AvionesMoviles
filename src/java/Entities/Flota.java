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
public class Flota {
    
    private String id_vuelo_fl;
    private Ruta ruta;
    private TipoAvion tipoAvion;
    
    public Flota(String id_vuelo_fl, Ruta ruta, TipoAvion tipoAvion){
       this.id_vuelo_fl=id_vuelo_fl;
       this.ruta=  ruta;
       this.tipoAvion= tipoAvion;
    }

    public String getId_vuelo_fl() {
        return id_vuelo_fl;
    }

    public void setId_vuelo_fl(String id_vuelo_fl) {
        this.id_vuelo_fl = id_vuelo_fl;
    }

    public Ruta getRuta() {
        return ruta;
    }

    public void setRuta(Ruta ruta) {
        this.ruta = ruta;
    }

    public TipoAvion getTipoAvion() {
        return tipoAvion;
    }

    public void setTipoAvion(TipoAvion tipoAvion) {
        this.tipoAvion = tipoAvion;
    }
    
    
    
}
