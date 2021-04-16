<%-- 
Document   : Header
Created on : 24/09/2019, 03:34:26 AM
Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Cuenta
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       
                        <a class="dropdown-item" href="">Registro</a>
                        <a class="dropdown-item" href="/Presentation1/Login.jsp">Acceder a Micuenta</a>
                        <a class="dropdown-item" href="/Presentation1/BuscarVuelos.jsp">Buscar Vuelos</a>

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
