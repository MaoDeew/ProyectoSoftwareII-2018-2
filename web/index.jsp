<%-- 
    Document   : index
    Created on : 23/05/2018, 09:08:38 PM
    Author     : Mao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<title>Loreal-Inicio de Sesion</title>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/estilos.css">
	
	</head>

	<body>
		<header>
			<div class="container">
				<div class="col-md-3">
					<img src="imagenes/1.png" width="140" height="140" class="img-responsive" >
				</div>
				<div class="col-md-6">
					<h1></h1>
				</div>
				<div class="col-md-3">
				</div>	
		</header>

		<br></br>
		

		<div class="container">
			<div class="col-md-12" style="background:#ffffff">
			</div> 
		</div>

		<br>
		
		<div class="container">

			<div class="inicio_sesion">
				
				<br>

				<div class="col-md-4">
				</div>
						
				<div class="col-md-4" style="background:#4e4a6c">
					<center>
						<b style="font-size:40px; color:#ffffff; font-family:Perpetua Titling MT"> Inicio de Sesion</b>   

						<br></br>

	                    <form name="loginform" id="loginform" action="InicioSesion" method="POST">
	                    
	                        <p style="font-family:Perpetua Titling MT">
	                            <label for="username" style="color:#000000">Nombre De Usuario
	                            	<input type="text" name="username" id="username" class="input" placeholder="Ingrese su Usuario" size="50" style="font-family:Perpetua"/>
	                        	</label>

	                       		<br></br>
	                            
	                            <label for="password" style="color:#000000">Contraseña
	                            	<input type="password" name="password" id="password" class="input" placeholder="Ingrese su Contrasena" size="50" style="font-family:Perpetua"/>	
	                        	</label>

	                        	<br></br>

		 						<p class="submit">
		                        	<input type="submit" name="login" class="button" value="Entrar" style="width:240px; height:65px; background-color:#474747;  color:#ffffff; font-family:Perpetua Titling MT"/>
		                        </p>

		                        <br></br>

		                        <p class="regtext" style="font-family:Perpetua Titling MT; color:#ffffff"> No estas registrado?...... <a href="register.php">Registrate Aqui!</p>
	                        </p>
	                    </form>	
	               	</center>
	            </div>
					
				<div class="col-md-4">
				</div>	
			</div>

		</div>

		<br><br>

		<div class="container">
			<div class="col-md-12" style="background:#ffffff">
			</div> 
		</div>

	

			<br></br>
			<br></br>
			<br></br>

			<div class="footer">
  				<p>LOreal group privacy statement</p>
  				<p>Terms of use for this site</p>
  				<p>All rights reserved @2018</p>
			</div>


		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>


</html>
