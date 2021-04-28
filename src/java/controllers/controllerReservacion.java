/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Entities.Vuelo;
import Models.Model;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chris
 */
@WebServlet(name = "controllerReservacion", urlPatterns = {"/controllerReservacion", "/newReservation", "/redirectNewReservationJSP"})
public class controllerReservacion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       if (request.getServletPath().equals("/newReservation")) {

            System.out.println("servlet newReservation");
            this.newReservation(request, response);
        }
       
        if (request.getServletPath().equals("/redirectNewReservationJSP")) {
            System.out.println("servlet newReservation");
            this.redirectNewReservationJSP(request, response);

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    private void redirectNewReservationJSP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
     
        String idVuelo= request.getParameter("idVuelo");
        Vuelo v= this.Filter(Models.ModelT.instance().getVuelosList(), idVuelo);
        request.setAttribute("VueloReserva", v);
        
        
        
        
    request.getRequestDispatcher("/Presentation1/Cliente/nuevaReservacion.jsp").forward(request, response);
    }

    
    
   public Vuelo Filter(ArrayList<Vuelo> list, String id){
       
       Vuelo vuelo = null;
       for(Vuelo p: list){
       if( p.getId_vuelo().equals(id)){
       vuelo=p;
       }
       
       
       }
   return vuelo;
       
   }
    
    private void newReservation(HttpServletRequest request, HttpServletResponse response) {
        
        Vuelo Vuelo= (Vuelo) request.getAttribute("VueloReserva");
        
        //obtener de la base segun el correo de usuario
        String Perfil;
        
//        String cantAsientos= request.getParameter();
        
         //To change body of generated methods, choose Tools | Templates.
    }

}
