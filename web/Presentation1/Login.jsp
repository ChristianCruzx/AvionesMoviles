<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Administrador</title>
  
        <%@include file="/Presentation/head.jsp"%>
    </head>
    <body>
        
       <div class="limiter">
		<div class="container-login100" style="background-image: url('/assets/images/Travel.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Login 
				</span>
				<div class="login100-form validate-form p-b-33 p-t-5">
                                 <form method="post" action="Login">
					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="text" name="email" id="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" id="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button login-btn class="login100-form-btn" onclick="send()">
							Login
						</button>
					</div>
 </form>
				</div>
			</div>
		</div>
	</div>
        
      
   

    </body>

</html>



<script language="javascript" type="text/javascript">
     var webSocket;
     var messages = document.getElementById("messages");


     $(test);
     function test(){
      $("#login-btn").on("click", openSocket());  

     }



      
  
       function openSocket(){

                // Ensures only one connection is open at a time
                if(webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED){
                   writeResponse("WebSocket is already opened.");
                    return;
                }
                
                // Create a new instance of the websocket
                webSocket = new WebSocket("ws://localhost:8080/echo");
                 
                /**
                 * Binds functions to the listeners for the websocket.
                 */
                webSocket.onopen = function(event){
                    // For reasons I can't determine, onopen gets called twice
                    // and the first time event.data is undefined.
                    // Leave a comment if you know the answer.
                    if(event.data === undefined)
                        return;
 
                    writeResponse(event.data);
                };
 
                webSocket.onmessage = function(event){
            
                    writeResponse(event.data);
                };
 
                webSocket.onclose = function(event){
                    writeResponse("Connection closed");
                };
            }

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
