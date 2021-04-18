<%-- 
Document   : Header
Created on : 24/09/2019, 03:34:26 AM
Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>      
          
            
            <%@include file="/Presentation1/PopUpRegister.jsp"%>
            <%@include file="/Presentation1/PopUpLogin.jsp"%>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Cuenta
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       
                        <a class="dropdown-item" data-toggle="modal"   type="button" data-target="#registrarUser" href="/Presentation1/RegisterUser.jsp">Registro</a>
                          
                        
                          
                            <button class="dropdown-item" data-toggle="modal"type="button" data-target="#loginUser" onclick="openSocket();" id="login-btn">login</button>
                          

                        <a class="dropdown-item" href="/Presentation1/Login.jsp">Acceder a Micuenta</a>
                        <a class="dropdown-item" href="/buscarVuelos">Buscar Vuelos</a>

                    </div>
                </li>
                
                <li class="nav-item dropdown my-2 my-lg-0">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Mi cuenta
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Presentation/CajeroPrincipal.jsp">Mi Perfil</a>
                        
                        <a class="dropdown-item" href="Presentation/CajeroPrincipal.jsp">Mis Reservaciones</a>
                        <a class="dropdown-item" href="Presentation1/Login.jsp">Logout</a>
    
                   
                    </div>
                </li>
                <li class="nav-item  my-2 my-lg-0">
                    <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Carrito
                    </a>
                   
                </li>

            </ul>

        </div>
    </nav>  


</html>


    
    
  
<script language="javascript" type="text/javascript">
    $(test);
     function test(){
      $("#login-btn").on("click", openSocket());  
      
     }
</script>

          

