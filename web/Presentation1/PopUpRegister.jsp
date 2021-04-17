

<!DOCTYPE html>
<link rel="stylesheet" href="datepicker.min.css">

<link href="/assets/vendorRegistrer/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="/assets/vendorRegistrer/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<!-- Font special for pages-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<!-- Vendor CSS-->
<link href="/assets/vendorRegistrer/select2/select2.min.css" rel="stylesheet" media="all">
<link href="/assets/vendorRegistrer/datepicker/daterangepicker.css" rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/assets/css/RegistrerUser.css" rel="stylesheet" media="all">




<div class="container container-fluid" id="containerCrearEncuesta">
    <form action="Register" method="post">
        <div class="modal fade" id="registrarUser" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="card-heading">
                            <h2 class="title" style="color: black; align-items: center;">Registrar Usuario</h2>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                  
                <div class="modal-footer ">
                    <div class="card-body">
                 
                                <div class="form-row ">
                                    <div class="name">Nombre</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="first_name">

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Apellido</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="lastName">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Correo</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="correo">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row m-b-55">
                                    <div class="name">Telefono</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="phone">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Direccion</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" type="text" name="adress">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="form-row m-b-55">
                                    <div class="name"> Seleccione Fecha de nacimiento</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                             
                                                <input type="date" data-date-format="mm/dd/yyyy" class="input--style-5" id="bday"  name="bday">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Password</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input class="input--style-5" value=""type="text" name="password">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container-login100-form-btn m-t-32">
                                    <button class="login100-form-btn" type="submit">Register</button>
                                </div>
                         
                        </div>
                    </div>  
                    
                    
                    
                    
                    
                    
                    
               
                </div>
            </div>
        </div>
 </form>
</div>
   
</div>
<script language="javascript" type="text/javascript">
    function espaciosEnBlanco() {
        nombre = document.getElementById("defaultRegisterFormFirstName");
        apellido1 = document.getElementById("defaultRegisterFormLastName1");
        apellido2 = document.getElementById("defaultRegisterFormlastName2");
        cedula = document.getElementById("defaultRegisterFormLastId");
        correo = document.getElementById("defaultRegisterFormEmail");
        contra1 = document.getElementById("contrasena1Usuario");
        contra2 = document.getElementById("contrasena2Usuario");
        var aux = String(nombre.value);
        nombre.value = aux.replace(" ", "");
        aux = String(apellido1.value);
        apellido1.value = aux.replace(" ", "");
        aux = String(apellido2.value);
        apellido2.value = aux.replace(" ", "");
        aux = String(cedula.value);
        cedula.value = aux.replace(" ", "");
        aux = String(correo.value);
        correo.value = aux.replace(" ", "");
        aux = String(contra1.value);
        contra1.value = aux.replace(" ", "");
        aux = String(contra2.value);
        contra2.value = aux.replace(" ", "");
        carga();
        verificarContrasena();
    }


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
        //  if (document.Model.encuestaExciste(Control.value.toString())) {
        //      Control.placeholder = "Encuesta ya existe";
        //      Control.value = "";
        //  }
    }
    function carga() {
        control = document.getElementById("cargando");
        control.style = "visibility: visible";
    }
    function cancelaCarga() {
        control = document.getElementById("cargando");
        control.style = "visibility: hidden";
    }
    function verificarContrasena() {
        contra1 = document.getElementById("contrasena1Usuario");
        contra2 = document.getElementById("contrasena2Usuario");
        if (contra1.value === contra2.value) {
            var st = contra1.value;
            if (st.length > 7) {

            } else {
                contra1.value = "";
                contra2.value = "";
                contra1.setAttribute("placeholder", "contraseña muy corta minimo 8 caracteres");
                contra2.setAttribute("placeholder", "contraseña muy corta minimo 8 caracteres");
                cancelaCarga();
            }
        } else {
            contra1.value = "";
            contra2.value = "";
            contra1.setAttribute("placeholder", "contraseña no coincide");
            contra2.setAttribute("placeholder", "contraseña no coincide");
            cancelaCarga();
        }
        verEmail();
        numeroT();
        idValidar();
        if (document.getElementById("defaultRegisterFormFirstName").value === "" || document.getElementById("defaultRegisterFormLastName1").value === "" || document.getElementById("defaultRegisterFormlastName2").value === "") {
            cancelaCarga();
        }
    }
    function verEmail() {
        var campoE = document.getElementById("defaultRegisterFormEmail");
        var cam = String(campoE.value);
        var a = true;
        var e = cam.length - 1;
        var o = true;
        if (e !== 0) {
            while (a) {
                var i = cam.charAt(e);
                e--;
                if (e > 0 && i !== "@") {
                    if (i === ".") {
                        a = false;
                        i = cam.charAt(e);
                        if (i !== "@") {
                            o = false;
                        }
                    }
                } else {
                    a = false;
                }
            }
        }
        if (o) {
            campoE.value = "";
            cancelaCarga();
        }
    }

    function numeroT() {
        var campT1 = document.getElementById("defaultRegisterPhonePassword");
        var camp = String(campT1.value);
        if (camp.length !== 8) {
            campT1.value = "";
            cancelaCarga();
        }
        var campT2 = document.getElementById("defaultRegisterPhonePassword2");
        camp = String(campT2.value);
        if (camp !== "") {
            if (camp.length !== 8) {
                campT2.value = "";
                cancelaCarga();
            }
        }
    }
    function idValidar() {
        var campId = document.getElementById("defaultRegisterFormLastId");
        var sCamp = String(campId.value);
        if (sCamp.length === 9) {
            if (sCamp.charAt(0) === "a" || sCamp.charAt(0) === "A" || sCamp.charAt(0) === "1" || sCamp.charAt(0) === "2" || sCamp.charAt(0) === "3" || sCamp.charAt(0) === "4" || sCamp.charAt(0) === "5" ||
                    sCamp.charAt(0) === "6" || sCamp.charAt(0) === "7" || sCamp.charAt(0) === "8" || sCamp.charAt(0) === "9") {
                if (sCamp.charAt(0) === "a") {
                    sCamp = sCamp.replace("a", "A");
                    campId.value = sCamp;
                }
            } else {
                campId.value = "";
                cancelaCarga();
            }
        } else {
            campId.value = "";
            cancelaCarga();
        }
    }

</script>
