<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal</title>

        <%@include file="/Presentation/head.jsp"%>
       <%@include file="/Presentation/PopUpTranfCuentasCliente.jsp"%>
              <%@include file="/Presentation/PopUpCliente-OtraCuenta.jsp"%>


    </head>
    <body>
        <%@include file="/Presentation/header.jsp"%>
        



        <div class="limiter" >
            <div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">


               
                <div class="login100-form validate-form p-b-33 p-t-5" style=" height: ">
                <span class="login100-form-title p-b-41" style=" color: purple">
                    Nombre Cliente
                </span>
                    <div  style="">


                  
                        <div style="text-align: left; margin-left: 125px; " >
                            <button  title="" data-toggle="modal"  class="btn btn-light text-left" type="button" data-target="#TranfCliente-Cliente" class="btn btn-default" id="CrearEncuesta">Transferencia entre cuentas Cliente</button>
                        </div>
                        
                         <div style="text-align: left; margin-left: 125px;  margin-top: 20px" >
                         <button title="Agregar Encuesta" data-toggle="modal"  class="btn btn-light text-left" type="button" style=" background: #5fbaa7" data-target="#TranfCliente-OtraCuenta" class="btn btn-default" id="ButtonCrearEncuesta">Transferencia a otras cuentas</button>
                         </div>
                        <div style="text-align: left; margin-left: 125px;  margin-top: 20px" >
                         <button title="Agregar Encuesta" data-toggle="modal"  class="btn btn-light text-left" type="button" style=" background: #5fbaa7" data-target="#TranfCliente-OtraCuenta" class="btn btn-default" id="ButtonCrearEncuesta">Nueva Cuenta</button>
                         </div>
                        <div  style="height: available; position: relative; margin-top: 20px;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      

                            <table class="table table-bordered table-striped mb-0 " id="example" style="">
                                <thead>
                                    <tr>
                                        <th id="colcorta" scope="col">#</th>
                                        <th scope="col">Numero de Cuenta</th>
                                        <th scope="col">Moneda</th>
                                        <th scope="col"></th>
                                        <th scope="col">Saldo</th>
                                        <th scope="col">Movimientos</th>
                                       <th scope="col">Transferencias</th>


                                    </tr>
                                </thead>
                                <tbody>

                                    <tr style="height: 10px">
                                        <td>   </td>
                                        <td width="200"> </td>
                                        <td style=" "> </td>
                                        <td style=" "> </td>
                                        <td style=" "></td>
                                        <td >
                                            <form method="GET" action="VerMovim">

                                            <button  type="submit" class="btn btn-default"><img  src="/assets/images/conectar.png"  style=" width: 50px; height: 50px;"></button>
                                            <input type="text" id="enc" name="DeleteEncuesta" style=" display:none;" value=" ">
                                            </form>
                                        </td>
                                        <td width="200">

                                            <form method="GET" action="VerTransf">
                                                <input type="text" name="nomEncu" style=" display:none;" value="">

                                                <button type="submit" class="btn btn-default"><img  src="/assets/images/pagar.png" style=" width: 50px; height: 50px;"></button>
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