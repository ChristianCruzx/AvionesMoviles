<%-- 
    Document   : RegisterUser
    Created on : 22/02/2020, 03:30:34 PM
    Author     : Chris
--%>

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
    
            <%@include file="/Presentation/header.jsp"%>

    <body>
        
             <% String pass=(String) session.getAttribute("password");
            if(pass==null){
            pass="";
            }
             %>

       		 <div class="limiter">
                     <div class="container-login100" style="background-image: url('/assets/images/unsplash.jpg');">
                        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Registrar Usuario</h2>
                </div>
                <div class="card-body">
     <form method="post" action="newRegistUser">

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
                            <div class="name">apellidos</div>
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
                            <div class="name">Numero Identificacion</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                           <input class="input--style-5" type="text" name="id">
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
                            <div class="name">Contrasena Generada</div>
                            <div class="value">
                                <div class="row row-space">
                                   <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" value="<%=pass%>"type="text" name="diaryTop">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                   
                        <div class="container-login100-form-btn m-t-32">
                            <button class="login100-form-btn" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>  
                         
                         
                         
                         
                         
                     </div>
                 </div>
                 </div>

    </body>
</html>
