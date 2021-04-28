<%-- 
    Document   : RegisterUser
    Created on : 22/02/2020, 03:30:34 PM
    Author     : Chris
--%>

<%@page import="Entities.Vuelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Cliente</title>
        <%@include file="/Presentation/head.jsp"%>
        <!--===============================Registrer User======================================================-->


        <!-- Icons font CSS-->
        <link href="/assets/vendorRegistrer/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="/assets/vendorRegistrer/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="/assets/vendorRegistrer/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="/assets/vendorRegistrer/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="/assets/css/RegistrerUser.css" rel="stylesheet" media="all">


        <!--===============================Registrer User======================================================-->



    </head>

    <%@include file="/Presentation1/header.jsp"%>

    <body>

        <% Vuelo Vuelo = (Vuelo)request.getAttribute("VueloReserva");  
        %>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('/assets/images/Travel.jpg');">
                <div class="wrapper wrapper--w790">
                    <div class="card card-5">
                        <div class="card-heading">
                            <h2 class="title">Nueva Reservacion</h2>
                        </div>
                        <div class="card-body">
                            <form method="post" action="newRegistUser">

                                <div class="form-row ">
                                    <div class="name">Origen</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input type="" class="form-control input--style-5" id="OrigenModal" readonly  value="<%= Vuelo.getRuta().getOrigen() %>">
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Destino</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input type="" class="form-control input--style-5" id="DestinoModal" readonly value="<%= Vuelo.getRuta().getDestino() %>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name">Duracion</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input type="" class="form-control input--style-5" id="DuracionModal" readonly value="<%= Vuelo.getRuta().getDuracion()%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row m-b-55">
                                    <div class="name">Fecha / Horario</div>
                                    <div class="value">
                                        <div class="row row-refine">

                                            <div class="col-9">
                                                <div class="input-group-desc">

                                                    <input type="" class="form-control input--style-5" id="HorarioModal" readonly value="<%= Vuelo.getFechaSalida() +"--" + Vuelo.getRuta().getHorario().toString() %>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-row m-b-55">
                                    <div class="name">Precio Tiquete(ud)</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <input type="" class="form-control input--style-5" readonly id="Precio"  value="<%=Vuelo.getPrecio()%>">  
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Cantidad de Asientos</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">

                                                    <input type="number"  class="form-control input--style-5" id="quantity" name="quantity" min="1" max="5"> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row m-b-55">
                                    <div class="name">Tipo de pago</div>
                                    <div class="value">
                                        <div class="row row-space">
                                            <div class="col-9">
                                                <div class="input-group-desc">
                                                    <select required="true" onchange="" class="form-control btn-info input--style-5" id="tipopago"  name="selectestado">

                                                        <option value="">Seleccione </option>
                                                        <option value="1">Paypal</option>
                                                        <option value="2">Debit /Credit</option>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                                <div class="container-login100-form-btn m-t-32">
                                    <button class="login100-form-btn" type="submit">Comprar</button>
                                </div>
                            </form>
                        </div>
                    </div>  





                </div>
            </div>
        </div>

    </body>
</html>
