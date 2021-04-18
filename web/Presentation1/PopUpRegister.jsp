

<!DOCTYPE html>
<link rel="stylesheet" href="datepicker.min.css">

 

<link href="/assets/vendorRegistrer/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="/assets/vendorRegistrer/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<!-- Font special for pages-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<!-- Vendor CSS-->
<link href="/assets/vendorRegistrer/select2/select2.min.css" rel="stylesheet" media="all">
<link href="/assets/vendorRegistrer/datepicker/daterangepicker.css" rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/assets/css/RegistrerUser.css" rel="stylesheet" media="all">




<div class="container container-fluid" id="containerCrearEncuesta">
    <form action="Register" method="post">
        <div class="modal fade" id="registrarUser" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="card-heading">
                            <h2 class="title" style="color: black; align-items: center;">Registrar Usuario</h2>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                  
                <div class="modal-footer ">
                    <div class="card-body">
                 
                                <div class="form-row ">
                                    <div class="name">Nombre</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="first_name">

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Apellido</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="lastName">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Correo</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="correo">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row m-b-55">
                                    <div class="name">Telefono</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="phone">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Direccion</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="adress">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="form-row m-b-55">
                                    <div class="name"> Seleccione Fecha de nacimiento</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                             
                                                <input type="date" data-date-format="mm/dd/yyyy" class="input--style-5" id="bday"  name="bday">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Password</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" value=""type="text" name="password">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container-login100-form-btn m-t-32">
                                    <button class="login100-form-btn" id="Registerbtn" type="submit">Register</button>
                                </div>
                         
                        </div>
                    </div>  
                    
                    
                    
                    
                    
                    
                    
               
                </div>
            </div>
        </div>
 </form>
</div>
   
</div>
<script language="javascript" type="text/javascript">
     var webSocket;
     var messages = document.getElementById("messages");


     $(test);
     function test(){
      $("#Registerbtn").on("click", openSocket());  

     }

     function alert(){

             
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



</script>


     

