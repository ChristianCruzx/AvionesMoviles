<%@page import="Logic.Cuenta"%>
<%@page import="Logic.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cajero</title>

        <%@include file="/Presentation/head.jsp"%>
              <%@include file="/Presentation/PopUpCliente-OtraCuenta.jsp"%>
             <%@include file="/Presentation/PopUpTranfCuentasCliente.jsp"%>



        <%  Cliente cliente = (Cliente) session.getAttribute("client");%>

    </head>
    <body>
        <%@include file="/Presentation/header.jsp"%>



        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">


               
                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                <span class="login100-form-title p-b-41" style=" color: purple">
                    Nombre Cliente
                </span>
     <form method="post" action="Favorito">

                        <div style="text-align: left; margin-left: 125px; " >
                             <label></label><input class="form-control" style="width:13%" onkeyUp="" type="text" name="NumFav" style=""  placeholder="Cuenta Favorito">
                            <button   class="btn btn-light text-left" type="submit"   style="margin-top: 1% " lass="btn btn-default" id="CrearEncuesta">Buscar Favorito</button>
                        </div>
                 </form>
 
 
      <%   if(error!=null){                   %>
					<div class="wrap-input100 validate-input" data-validate = "">
                                                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                                                    <h3 style="text-align: center">  <%= error%> </h3>
                 
                </span>
					</div>

		
 <%   }           %>

                  
                        <div style="text-align: left; margin-left: 125px;  margin-top: 1%" >
                            <button  title="" data-toggle="modal"  class="btn btn-light text-left" type="button" data-target="#TranfCliente-Cliente" class="btn btn-default" id="CrearEncuesta">Transferencia entre mis cuentas</button>
                        </div>
                        
                         <div style="text-align: left; margin-left: 125px;  margin-top: 20px" >
                         <button title="Agregar Encuesta" data-toggle="modal"  class="btn btn-light text-left" type="button" style=" background: #5fbaa7" data-target="#TranfCliente-OtraCuenta" class="btn btn-default" id=" ">Transferencia a otras cuentas</button>
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
                                        <th scope="col">Movimientos</th>
                                       <th scope="col">Transferencias</th>


                                    </tr>
                                </thead>
                                <tbody>

                                     <% int i = 0;

                                        for (Cuenta c : cliente.getListCuentas()) {
                                            i++;%>


                                    <tr style="height: 10px">
                                        <td> <%= i%>   </td>
                                        <td> <%= c.getNum_cuenta() %> </td>
                                        <td><%= c.getMoneda_nombre().getNombre() %> </td>
                                        <td><%= c.getLimite_transferencia_diaria() %> </td>
                                        <td> <%= c.getSaldo_final() %> </td>
                                        <td>
                                            <form method="post" action="VerMovim">

                                            <button  type="submit" class="btn btn-default"><img  src="/assets/images/efectivo.png"  style=" width: 50px; height: 50px;"></button>
                                            <input type="text" id="enc" name="movimientos" style=" display:none;" value="<%= c.getNum_cuenta() %> ">
                                            </form>
                                        </td>
                                        
                                        <td width="200">

                                            <form method="post" action="VerTransf">
                                                <input type="text" name="transferencias" style=" display:none;" value="<%= c.getNum_cuenta() %> ">

                                                <button type="submit" class="btn btn-default"><img  src="/assets/images/dinero.png" style=" width: 50px; height: 50px;"></button>
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