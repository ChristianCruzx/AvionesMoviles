<%@page import="Logic.Movimiento"%>
<%@page import="Logic.Cuenta"%>
<%@page import="java.util.List"%>
<%@page import="Logic.Transferencia"%>
<%@page import="Logic.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Movimientos</title>

        <%@include file="/Presentation/head.jsp"%>
        <%  Cuenta c = (Cuenta) session.getAttribute("cuenta");%>
        
    </head>
    <body>
        <%@include file="/Presentation/header.jsp"%>



        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">


               
                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                <span class="login100-form-title p-b-41" style=" color: purple">
                   <%= c.getNum_cuenta() %>
                </span>
                    <div  style="">


                  
                        <div style="text-align: left; margin-left: 125px; " >



                        </div>
                        <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      

                            <table class="table table-bordered table-striped mb-0 " id="example" style="">
                                <thead>
                                    <tr>
                                        <th id="colcorta" scope="col">#</th>
                                        <th scope="col">NumCuenta</th>
                                        <th scope="col">TipoMovimiento</th>
                                        <th scope="col">Monto</th>
                                        <th scope="col">Fecha</th>
                          
                                    </tr>
                                </thead>
                                <tbody>

                                   <% int i = 0;

                                    for (Movimiento m : c.getListaMovimientos()) {
                                            i++;%>


                                    <tr>
                                        <td> <%= i%>   </td>
                                        <td> <%= m.getNum_cuenta().getNum_cuenta() %> </td>
                                        <td><%= m.getMovimientocol() %> </td>
                                        <td><%= m.getMonto() %> </td>
                                        <td><%= m.getFecha() %> </td>

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