
<%@page import="ModelDataBase.CuentaDAO"%>
<%@page import="Logic.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="Logic.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cajero</title>

        <%@include file="/Presentation/head.jsp"%>
        <%  Cliente cliente = (Cliente) session.getAttribute("cliente");%>
        <%List<Cliente> list = (List<Cliente>) Model.Model.instance().listaClientes();%>


    </head>
    <body>
        <%@include file="/Presentation/header.jsp"%>
        
         



        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">


               
                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                <span class="login100-form-title p-b-41" style=" color: purple">
                    Cajero
                </span>
                    <div  style="">


                 <form method="post" action="entraRegistUser">

                        <div style="text-align: left; margin-left: 125px; " >
                            <button   class="btn btn-light text-left" type="submit"  class="btn btn-default" id="CrearEncuesta">Agregar Cliente</button>
                        </div>
                 </form>

 <form method="post" action="viewDepositoG">

                        <div style="text-align: left; margin-left: 125px; " >
                            <button   class="btn btn-light text-left" type="submit"  class="btn btn-default" id="CrearEncuesta">Deposito</button>
                        </div>
                 </form>

                   <form method="post" action="vistaAllCuentas">
                         <div style="text-align: left; margin-left: 125px;  margin-top: 20px" >
                         <button title="Agregar Encuesta" data-toggle="modal"  class="btn btn-light text-left" type="submit" style=" background: #5fbaa7" data-target="#RegistarUser" class="btn btn-default" id="ButtonCrearEncuesta">Acreditar Intereses</button>
                         </div>
                            </form>
                        <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      

                            
                            
                            <table class="table table-bordered table-striped mb-0 " id="example"style="">
                                <thead>
                                    <tr>
                                        <th id="colcorta" scope="col">#</th>
                                        <th scope="col">Nombre Cliente</th>
                                        <th scope="col">Id Cliente</th>
                                        <th scope="col">Cantidad de Cuentas</th>
                                        <th scope="col">Ingresar</th>

                                    </tr>
                                </thead>
                                <tbody>


                                    <% int i = 0;

                                        for (Cliente c : list) {
                                            
                                            
                                            i++;%>


                                    <tr>
                                        <td> <%= i%>   </td>
                                        <td> <%= c.getNombre()%> </td>
                                        <td><%= c.getId_cliente() %> </td>
                                        <td><%= CuentaDAO.obtenerInstancia().listarCuentasCliente(c.getId_cliente()).size() %> </td>
                                        <td>
                                            <form method="post" action="ClienteCajero">

                                            <button  type="submit" class="btn btn-default"><img  src="/assets/images/emter.png"  style=" width: 50px; height: 50px;"></button>
                                            <input type="text" id="enc" name="EnterClient" style=" display:none;" value="<%= c.getId_cliente() %>">
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