<%-- 
    Document   : PopUpLogin
    Created on : Apr 16, 2021, 5:47:13 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>

        <div class="modal fade" id="loginUser" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="card-heading">
                            <h2 class="title" style="color: black; align-items: center;">Inicio Sesion </h2>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-footer ">
                        <div class="login100-form validate-form p-b-33 p-t-5">
                            
                                <div class="wrap-input100 validate-input" data-validate = "Enter email">
                                    <input class="input100" type="text" name="email" id="email" placeholder="Email">
                                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                </div>

                                <div class="wrap-input100 validate-input" data-validate="Enter password">
                                    <input class="input100" type="password" id="password" name="password" placeholder="Password">
                                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                                </div>

                                <div class="container-login100-form-btn m-t-32">
                                    <button class="login100-form-btn" id="login-btn" onclick="send();">
                                        Login
                                    </button>
                                </div>
                        
                        </div>

                    </div>  








                </div>
            </div>
        </div>

    </body>
</html>



<script language="javascript" type="text/javascript">
     var webSocket;
   
              /**
             * Sends the value of the text input to the server
             */
            function send(){
                var email = document.getElementById("email").value;
                var password=document.getElementById("password").value;
               user={
                    "correo": email,
                    "password":password   
                };
                webSocket.send(JSON.stringify(user));
            }
           
            function closeSocket(){
                webSocket.close();
            }
 
            function writeResponse(text){
                messages.innerHTML += "<br/>" + text;
            }
           
</script>

