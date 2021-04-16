

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aerolinea Public</title>
        <%@include file="/Presentation/head.jsp"%>

    </head>
    <%@include file="/Presentation1/header.jsp"%>
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
                                    
                                    <th scope="col">Origen</th>
                                    <th scope="col">Destino</th>
                                    <th scope="col">Duracion</th>
                                    <th scope="col">Fecha Ida</th>
                                    <th scope="col">Fecha Regreso</th>
                                    <th scope="col">Horario</th>
                                    <th scope="col">Cantidad Asientos Disponibles</th>
                                    <th id="colcorta" >Add</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="height: 10px">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                              
                                      <td> </td>
                                       <td width="200">
                                        <form method="post" action="VerTransf">
                                            <input type="text" name="transferencias" style=" display:none;" value=" ">
                                            <button type="submit" class="btn btn-default"><img  src="/assets/images/dinero.png" style=" width: 50px; height: 50px;"></button>
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