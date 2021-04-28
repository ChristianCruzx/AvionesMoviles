

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
 

    <%  ArrayList<Vuelo> listaVuelos = (ArrayList<Vuelo>) session.getAttribute("listaVuelos");%>


    <body>
        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/airplane.jpg');">
                <div class="login100-form validate-form "style=" opacity: 0.7; background: #b9bbbe">
                    <span class="login100-form-title p-b-41" style=" color: purple">
                        Aerolinea C&M
                    </span>

                    <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">     
                        <h3 style="text-align: center">Buscar Vuelos Disponibles</h3>
                        <table class="table table-bordered table-striped mb-0 " id="example"style="">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Origen</th>
                                    <th scope="col">Destino</th>
                                    <th scope="col">Fecha Vuelo</th>
                                    <th scope="col">Asientos Disponibles</th>
                                    <th id="colcorta">Reservar</th>
                                </tr>
                            </thead>
                            <tbody>

                                <% int i = 0;

                                       for (Vuelo vuelo : listaVuelos) {
                                           i++;%>
                                <tr style="height: 10px">
                                    <td><%= i%>  </td>
                                    <td><%= vuelo.getRuta().getOrigen()%>  </td>
                                    <td><%= vuelo.getRuta().getDestino()%>   </td>
                                    <td><%= vuelo.getFechaSalida()%> </td>

                                    <td><%= vuelo.getCant_pasajeros()%></td>
                                    <td width="200">
                                        <form method="post" action="redirectNewReservationJSP">
                                            <input type="text" name="idVuelo" style=" display:none;" value="<%= vuelo.getId_vuelo()%>">
                                            <button  type="submit" class="btn btn-default"><img  src="/assets/images/booking3.png" style=" width: 70px; height: 70px;"></button>
                                        </form>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
<script>
    
 <script language="javascript" type="text/javascript">
    $(test());
     function test(){
      $("#login-btn").on("click", openSocket());  
      
     }
</script>
    
    
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
                },

            }

        });
    });
</script>