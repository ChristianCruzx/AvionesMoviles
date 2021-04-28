package Entities;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Chris
 */
public class Perfil implements Serializable {
    
   
    private String nombre;
    private String Apellido;
    private String correo;
    private String direccion;
    private String Telefono;
    private String fechaNacimiento;

    public Perfil( String nombre, String Apellido, String correo, String direccion, String Telefono, String fechaNacimiento) {
       
        this.nombre = nombre;
        this.Apellido = Apellido;
        this.correo = correo;
        this.direccion = direccion;
        this.Telefono = Telefono;
        this.fechaNacimiento = fechaNacimiento;
    }

     //para guardar en base sin id
    


   

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    @Override
    public String toString() {
        return "Perfil{" +  ", nombre=" + nombre + ", Apellido=" + Apellido + ", correo=" + correo + ", direccion=" + direccion + ", Telefono=" + Telefono + ", fechaNacimiento=" + fechaNacimiento + '}';
    }
    
    
    
    
}
