<%@page import="Logic.Cuenta"%>
<%@page import="Logic.Cliente"%>
<%@page import="Logic.Favorita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Retiro</title>
  
        <%@include file="/Presentation/head.jsp"%>
    </head>
    <body>
        
        
     <% Cuenta numCuenta = (Cuenta) session.getAttribute("fav");
     Cliente c = new Cliente();
     if(numCuenta!=null){
      c= Model.Model.instance().recuperarCliente(numCuenta.getId_cliente().getId_cliente());
     }
     String error = (String) session.getAttribute("errorfav");
     
     
     %>

        
        
        
       <div class="limiter">
		<div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				
				<div class="login100-form validate-form p-b-33 p-t-5">
 <form method="post" action="agregarFavorito">
     
     <%   if(error==null){                   %>
     
     <span class="login100-form-title p-b-41" style="color: black">
                                    <%= "Nombre Cuenta:" + c.getNombre() + " " + c.getApellidos() %>
				</span>
                                <span class="login100-form-title p-b-41" style="color: black">
                                    <%= "Numero Cuenta:" + numCuenta.getNum_cuenta() %>
				</span>
					
                                        
                                        <div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Agregar Cuenta a Favoritos
						</button>
					</div>

		
 <%   }           %>
 
 
      <%   if(error=="error"){                   %>
					 <span class="login100-form-title p-b-41" style="color: black">
                                    Cuenta no Exite
				</span>
		
 <%   }           %>
					
 </form>
				</div>
			</div>
		</div>
	</div>
        
      <div id="dropDownSelect1"></div>
   

    </body>

</html>
