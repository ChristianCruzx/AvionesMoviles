<%@page import="java.util.List"%>
<%@page import="Logic.Cuenta"%>
<%@page import="Logic.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Intereses</title>

        <%@include file="/Presentation/head.jsp"%>
    
        <%  List<Cuenta> list =(List<Cuenta>)session.getAttribute("listaAllCuentas");%>

    </head>
    <body>
        <%@include file="/Presentation/header.jsp"%>



        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">


               
                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                <span class="login100-form-title p-b-41" style=" color: purple">
                    Cuentas Bancos
                </span>
                    <div  style="">


                  
                        <div style="text-align: left; margin-left: 125px; " >
                            <button  title="" data-toggle="modal"  class="btn btn-light text-left" type="button" data-target="#Modall2" class="btn btn-default" id="CrearEncuesta">Acreditar Intereses</button>
                        </div>
                        
                     
                        <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      

                            <table class="table table-bordered table-striped mb-0 " id="example"style="">
                                <thead>
                                    <tr>
                                        <th id="colcorta" scope="col">#</th>
                                        <th scope="col">Numero de Cuenta</th>
                                        <th scope="col">Moneda</th>
                                        <th scope="col">LimiteDiario</th>
                                        <th scope="col">Saldo</th>
                                        <th scope="col">Tipo de Cuenta</th>
                       
                                    </tr>
                                </thead>
                                <tbody>

                                     <% int i = 0;

                                        for (Cuenta c : list) {
                                            i++;%>


                                    <tr style="height: 10px">
                                        <td> <%= i%>   </td>
                                        <td> <%= c.getNum_cuenta() %> </td>
                                        <td><%= c.getMoneda_nombre().getNombre() %> </td>
                                        <td><%= c.getLimite_transferencia_diaria() %> </td>
                                        <td> <%= c.getSaldo_final() %> </td>
                                        
                                        <% if(c.getId_tipo_cuenta().getId_tipo_cuenta()==1){%>
                                        <td>Corriente</td>
                                        <% }%>
                                            <% if(c.getId_tipo_cuenta().getId_tipo_cuenta()==2){%>
                                        <td>Ahorro</td>
                                        <% }%>

                                        
                                       
                                    </tr>
                                    <%}%>

                                </tbody>
                            </table>

                        </div>

                    </div>









                </div>







            </div>

        </div>

        <div class="modal fade" id="Modall2"   tabindex="-1" role="dialog" aria-labelledby="Modall2" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Atención</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                       Los intereses a cada cuenta se Acreditaran de la siguiente manera:
                       
                           <div>
                
            
                <div class="alert  alert-danger" style="margin-left: 10px; margin-right: 10px" role="alert">
                    Cuentas Tipo Ahorro: 10% de más respecto al saldo de la cuentas.
                    
                </div>
                 <div class="alert  alert-warning" style="margin-left: 10px; margin-right: 10px" role="alert">
                    Cuentas Tipo Corriente: 4% de más respecto al saldo de la cuentas.
                    
                </div>

                
            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="Button1" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <form method="post" action="Acreditar">
                            <input type="text" id="valorOperadoraBorrar" name="DeleteOperadora" style=" display:none;">
                            <button type="submit" id="Button2" class="btn btn-primary">Acreditar</button>
                        </form>
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