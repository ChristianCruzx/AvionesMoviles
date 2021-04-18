<%@page import="Logic.Favorita"%>
<%@page import="Logic.Cuenta"%>
<%@page import="java.util.List"%>

 <%  List<Cuenta> lista = (List<Cuenta>) session.getAttribute("ListaCuentas2");%>

  <%  List<Favorita> listaFa1 = (List<Favorita>) session.getAttribute("ListaFav1");%>
 <%  String error = (String) session.getAttribute("Error");%>

<div class="container container-fluid" id="containerCrearEncuesta">
    <form action="Tranf_Cliente_OtroCLiente" method="post">
        <div class="modal fade" id="TranfCliente-OtraCuenta" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalLabel">Transferencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="modBody">
                
                        <div class="form-group">
                                               <label class="mr-sm-2" for="inlineFormCustomSelect">Cuenta Debitar</label>
      <select class="custom-select mr-sm-2" id="cuentaDebitar" name="cuentaDebitar">
        <option selected>Seleccione</option>
            <% 

                                        for (Cuenta cuenta : lista) {
                                            %>
        <option value="<%= cuenta.getNum_cuenta() %> "><%= cuenta.getNum_cuenta() %></option>
    <% } %>
       
      </select>
                        </div>
                        
                        
                        
                    
                        <div class="form-group">
                            <div class="form-group">
                     <label class="mr-sm-2" for="inlineFormCustomSelect">Seleccione Favoritos</label>
      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" id="Fav" name="Fav">
        <option selected>Seleccione</option>
           <%  for ( Favorita fav: listaFa1) {
                                            %>
        <option value="<%= fav.getCuenta_num().getNum_cuenta() %> "><%= fav.getCuenta_num().getNum_cuenta()  %></option>
    <% } %>
      </select>
                        </div>
                            
                        </div>
                        <div class="form-group">
                       <label>Ingrese Numero de Cuenta</label><input class="form-control"  type="text" id="cuentaAcreditar" name="cuentaAcreditar" placeholder="">
                        </div>
                        
     
                        
      <div class="form-group">

         <label for="validationTooltip02">Monto</label>
      <input type="text" class="form-control" id="validationTooltip02" placeholder="" value="" name="monto" required>
     
        </div>

                            
                            
                            
                            
                    </div>
                    <div class="modal-footer">
                        <button  class="btn btn-light text-left" id="ButtonCrearEncuesta" onclick="return carga();" type="submit" style="">Crear</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <div class="spinner-grow text-danger" id="cargando" style="visibility: hidden" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>

                        <input type="text" name="cbe" style=" display:none;" value="">

                    </div>
                </div>
            </div>

        </div>
    </form>
</div>
<script language="javascript" type="text/javascript">
    function Solo_Numerico(variable) {
        Numer = parseInt(variable);
        if (isNaN(Numer)) {
            return "";
        }
        return Numer;
    }
    function ValNumero(Control) {
        Control.value = Solo_Numerico(Control.value);
        Control.placeholder = "Ingrese un numero";
    }
    function validar(e, Control) { // 1
        cambiaHolder(Control);
        tecla = (document.all) ? e.keyCode : e.which; // 2
        if (tecla === 8)
            return true; // 3
        patron = /[A-Za-z\s]/; // 4
        te = String.fromCharCode(tecla); // 5
        return patron.test(te); // 6

    }
    function cambiaHolder(Control) {
        Control.placeholder = "Ingrese Letras";
    }
    function carga(){
        control = document.getElementById("cargando");
        control.style = "visibility: visible";
    }
    </script>