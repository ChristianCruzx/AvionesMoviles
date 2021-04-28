/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Entities.Perfil;
import Entities.Usuario;
import Exceptions.GlobalException;
import Exceptions.NoDataException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chris
 */
@WebServlet(name = "controllerUser", urlPatterns = {"/controllerUser", "/Register", "/Login"})
public class controllerUser extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ParseException, GlobalException, NoDataException {
        if (request.getServletPath().equals("/Register")) {

            System.out.println("servlet Register");
            this.RegisterUser(request, response);

        }

        if (request.getServletPath().equals("/Login")) {

            System.out.println("servlet login");
            this.Login(request, response);

        }
    }


     public void Login(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        //Variables with info from Frontend      
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        //New Objects
        Usuario userSession = new Usuario(email,password);
       
        
        System.out.println(userSession);
        
        //Send to database and check the crediantials.
        
        
        //save in session
        //("UserSession", userSession);


                request.getRequestDispatcher("/Presentation1/Principal.jsp").forward(request, response);


            }


    public void RegisterUser(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException, GlobalException, NoDataException {

        //Variables with info from Frontend      
        String name = request.getParameter("first_name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("correo");
        String phone = request.getParameter("phone");
        String adress = request.getParameter("adress");
        String password = request.getParameter("password");
        String string_dateBirthday = request.getParameter("bday");
         
         System.out.print( string_dateBirthday);
        
        
        Integer rol = 2; //esto deberia ser in String;

         //Create  new objects
        Perfil profile = new Perfil(name, lastName, email, adress,phone, string_dateBirthday);
        Usuario user = new Usuario(email, password, rol, "2");
        Models.Model.instance().insertar_objeto(Entities.Perfil.class, profile);
        
       

        System.out.println(profile.toString());
        System.out.println(user.toString());
        

 
        response.sendRedirect(request.getHeader("referer"));

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (GlobalException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoDataException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (GlobalException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoDataException ex) {
            Logger.getLogger(controllerUser.class.getName()).log(Level.SEVERE, null, ex);
        }
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

}
