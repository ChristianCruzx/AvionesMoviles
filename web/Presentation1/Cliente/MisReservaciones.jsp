

<%@page import="Entities.Vuelo"%>
<%@page import="Models.ModelT"%>
<%@page import="Models.Model"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aerolinea Public</title>
        <%@include file="/Presentation/head.jsp"%>

    </head>
    <%@include file="/Presentation1/header.jsp"%>
        <%@include file="/Presentation1/Cliente/PopUpTickete.jsp"%>

 

  


    <body>
        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/airplane.jpg');">
                <div class="login100-form validate-form "style=" opacity: 0.7; background: #b9bbbe">
                    <span class="login100-form-title p-b-41" style=" color: purple">
                       Mis reservaciones
                    </span>

                    <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">     
                        <h3 style="text-align: center"></h3>
                        <table class="table table-bordered table-striped mb-0 " id="example"style="">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Origen</th>
                                    <th scope="col">Destino</th>
                                    <th scope="col">Salida</th>
                                    <th id="colcorta">Check In Ver Tiquete</th>
                                    <th id="colcorta">Ver Tiquete</th>

                                </tr>
                            </thead>
                            <tbody>

                              
                                <tr style="height: 10px">
                                    <td>Hola </td>
                                    <td> JHola</td>
                                    <td> fdghfd </td>
                                    <td> fdgh</td>

                                    <td>
                                        <form method="post" action="redirectNewReservationJSP">
                                            <input type="text" name="idVuelo" style=" display:none;" value="">
                                            <button  type="submit" class="btn btn-default" value="1" ><img  src="/assets/images/check_in.png" style=" width: 80px; height: 80px;"></button>
                                        </form>
                                        
                                    </td>
                                    <td width="200">
                                        <form method="post" action="">
                                            <input type="text" name="idVuelo" style=" display:none;" value="">
                                            <button   data-toggle="modal"type="button"  data-target="#tikete-modal" value="3" id="3" class="clickme"  class=" btn btn-default"><img  src="/assets/images/tikete.png" style=" width: 100px; height: 100px;"></button>
                                        </form>
                                    </td>
                                </tr>
                                
                                
                                 <tr style="height: 10px">
                                    <td>Hola </td>
                                    <td> JHola</td>
                                    <td> fdghfd </td>
                                    <td> fdgh</td>

                                    <td>
                                        <form method="post" action="redirectNewReservationJSP">
                                            <input type="text" name="idVuelo" style=" display:none;" value="">
                                            <button  type="submit" class="btn btn-default" ><img  src="/assets/images/check_in.png" style=" width: 80px; height: 80px;"></button>
                                        </form>
                                        
                                    </td>
                                    <td width="200">
                                        <form method="post" action="">
                                            <input type="text" name="idVuelo" style=" display:none;" value="">
                                            <button   value="2"class="dropdown-item" data-toggle="modal"   type="button" data-target="#tikete-modal" id="2" class="clickme" class="btn btn-default"><img src="/assets/images/tikete.png" style=" width: 100px; height: 100px;"></button>
                                        </form>
                                    </td>
                                </tr>
                             
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

 <script language="javascript" type="text/javascript">
     
        $(function(){
        $('.clickme').click(function(){
            
            openSocket();
            send(this.id);
           
        });
    });
     
   

    
    
    $(document).ready(function () {
        $('#example').DataTable({
            pageLength: 10,
            responsive: true,
            lengthMenu: [[10, 20, 100, -1], ["10", "20", "100", "Todos"]],
            language: {

                search: "Buscar: ",
                lengthMenu: "Elementos _MENU_  por pagina",

                info: "Mostrando  _START_  a _END_ de _TOTAL_ elementos",

                loadingRecords: "Cargando Elementos...",
                zeroRecords: "No se encontraron elementos que coincidan con los parametros de busqueda",
                emptyTable: "No hay elementos disponibles",
                paginate: {
                    first: "Primer",
                    previous: "Anterior",
                    next: "Siguiente",
                    last: "Ultimo"
                }

            }

        });
    });
</script>