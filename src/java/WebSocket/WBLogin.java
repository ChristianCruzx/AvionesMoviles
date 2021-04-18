/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebSocket;

import Entities.Perfil;
import Entities.Usuario;
import Entities.Vuelo;
import Models.ModelT;
import com.google.gson.Gson;
import java.io.FileOutputStream;
/**
 *
 * @author Chris
 */import java.io.IOException;
import java.io.ObjectOutputStream;
import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
 
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
 
/** 
 * @ServerEndpoint gives the relative name for the end point
 * This will be accessed via ws://localhost:8080/EchoChamber/echo
 * Where "localhost" is the address of the host,
 * "EchoChamber" is the name of the package
 * and "echo" is the address to access this class from the server
 */
@ServerEndpoint(value="/echo/{parameter1}", configurator = CustomConfigurator.class) 
public class WBLogin {
    /**
     * @OnOpen allows us to intercept the creation of a new session.
     * The session class allows us to send data to the user.
     * In the method onOpen, we'll let the user know that the handshake was 
     * successful.
     */
    
    
    private HttpSession httpSession;

    public void setHttpSession(HttpSession httpSession) {
        if (this.httpSession != null) {
            throw new IllegalStateException("HttpSession has already been set!");
        }

        this.httpSession = httpSession;
    }

    
    @OnOpen
    public void onOpen(Session session,  EndpointConfig config){
        
      
        System.out.println(session.getId() + " has opened a connection"); 
//        try {
////            session.getBasicRemote().sendText("Connection Established");
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
    }
 
    /**
     * When a user sends a message to the server, this method will intercept the message
     * and allow us to react to it.For now the message is read as a String.
     * @param message
     * @param session
     */
    @OnMessage
    public void onMessage(String message, Session session,@PathParam("parameter1") String parameter1){
        if("login".equals(parameter1)){
            this.login(message, session);
         }       
         if("register".equals(parameter1)){
             this.register(message, session);

         }
        
        
    }
 
    /**
     * The user closes the connection.
     * 
     * Note: you can't send messages to the client from this method
     */
    @OnClose
    public void onClose(Session session){
        System.out.println("Session " +session.getId()+" has ended");
    }
    
    public void login(String message, Session session){
    
    //Deserealizacion 
        Gson gson= new Gson();
        Usuario user = gson.fromJson(message, Usuario.class); 
        user.setRole(1);
       
       System.out.println(user);
       
       // compobar en la base de datos
        // true ejcuttar esto
       //Saving 
       this.httpSession.setAttribute("User", user);
        //create new Onbject 
        try {
            session.getBasicRemote().sendText("success");
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        
        // si no
//        try {
//            session.getBasicRemote().sendText("fail");
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
    
    
    }
    
    
    
    public void register(String message, Session session){
    
//    //Deserealizacion 
//        Gson gson= new Gson();
//        Perfil perfil = gson.fromJson(message, Perfil.class); 
//     
//       
//       System.out.println(perfil);
//       
//       // compobar en la base de datos
//        // true ejcuttar esto
//       //Saving 
//       this.httpSession.setAttribute("User", user);
//        //create new Onbject 
//        try {
//            session.getBasicRemote().sendText("success");
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
//        
//        // si no
////        try {
////            session.getBasicRemote().sendText("fail");
////        } catch (IOException ex) {
////            ex.printStackTrace();
////        }
//    
    
    }
}