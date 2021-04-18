<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Deposito</title>
  
        <%@include file="/Presentation/head.jsp"%>
    </head>
    <body>
        
        
     <% String numCuenta = (String) session.getAttribute("numCuentaDeposito");%>

        
        
        
       <div class="limiter">
		<div class="container-login100" style="background-image: url('/assets/images/nasa.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					 <%= "Cuenta" + " #" + numCuenta%>
				</span>
				<div class="login100-form validate-form p-b-33 p-t-5">
 <form method="post" action="hacerDeposito">
					<div class="wrap-input100 validate-input" data-validate = "">
						<input class="input100" type="text" name="monto" placeholder="Ingrese el Monto a depositar">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

		

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Depositar
						</button>
					</div>
 </form>
				</div>
			</div>
		</div>
	</div>
        
      <div id="dropDownSelect1"></div>
   

    </body>

</html>
