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

        <div class="modal fade" id="tikete-modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="card-heading">
                            <h2 class="title" style="color: black; align-items: center;">Informacion Tiquete</h2>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-footer ">
                        <div class="card-body">


                            <div class="form-row ">
                                <div class="name">Origen</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input type="" class="form-control input--style-5" id="OrigenModal" readonly  value="">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Destino</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input type="" class="form-control input--style-5" id="DestinoModal" readonly value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Duracion</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input type="" class="form-control input--style-5" id="DuracionModal" readonly value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row m-b-55">
                                <div class="name">Fecha / Horario</div>
                                <div class="value">
                                    <div class="row row-refine">

                                        <div class="col-9">
                                            <div class="input-group-desc">

                                                <input type="" class="form-control input--style-5" id="HorarioModal" readonly value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="form-row m-b-55">
                                <div class="name">Precio Tiquete(ud)</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input type="" class="form-control input--style-5" readonly id="Precio"  value="">  
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="form-row m-b-55">
                                <div class="name">Tipo de pago</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input type="" class="form-control input--style-5" id="HorarioModal" readonly value="">

                                            </div>
                                        </div>
                                    </div>
                                </div>
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

    function openSocket() {
        // Ensures only one connection is open at a time
        if (webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED) {
            console.log("connnection ready");
     

            return;
        }
        // Create a new instance of the websocket
        webSocket = new WebSocket("ws://localhost:8080/echo/tikete");

        /**
         * Binds functions to the listeners for the websocket.
         */
        webSocket.onopen = function (event) {
            // For reasons I can't determine, onopen gets called twice
            // and the first time event.data is undefined.
            // Leave a comment if you know the answer.
            if (event.data === undefined)
                return;

        };

        webSocket.onmessage = function (event) {
            if (event.data !== "")
                ShowInfo(event.data);
            //writeResponse(event.data);
        };

        webSocket.onclose = function (event) {
            //writeResponse("Connection closed");
        };
    }


    function send(id) {
        webSocket.send(id);

    }

    function closeSocket() {
        webSocket.close();
        console.log("close socked");
    }

    function ShowInfo(verificar) {
      
         
      
    closeSocket();
    }



</script>

