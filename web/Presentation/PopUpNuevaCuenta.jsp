  

<div class="container container-fluid" id="containerCrearEncuesta">
    <form action="newCuenta" method="post">
        <div class="modal fade" id="NuevaCuenta" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
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
                                               <label class="mr-sm-2" for="inlineFormCustomSelect">Tipo de Moneda</label>
        <select class="custom-select mr-sm-2" id="moneda" name="moneda" >
        <option selected>Seleccione</option>
        <option value="CRC">Colones</option>
        <option value="USD">Dolares</option>
        <option value="EUR">Euros</option>

      </select>
                        </div>
                        
                        
                        
                    
                        <div class="form-group">
                            <div class="form-group">
                     <label class="mr-sm-2" for="inlineFormCustomSelect">Tipo de Cuenta</label>
      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" id="tipCuenta" name="tipCuenta" >
        <option selected>Seleccione</option>
        <option value="1">Ahorro</option>
        <option value="2">Corriente</option>
      </select>
                        </div>
                            
                        </div>
                        <div class="form-group">
                       <label>Saldo Inicial</label><input class="form-control" onkeyUp="return ValNumero(this);" type="text" name="SaldoInicial" style="" id="SaldoInicial" placeholder="">
                        </div>
         
                            <div class="form-group">
                       <label>Limite Diario</label><input class="form-control" onkeyUp="return ValNumero(this);" type="text" name="top" style="" id="top" placeholder="">
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