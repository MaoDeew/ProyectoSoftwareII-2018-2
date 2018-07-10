<%-- 
    Document   : perfil
    Created on : 30/05/2018, 12:59:54 PM
    Author     : Mao
--%>

<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>

    <head>

        <title>Loreal-Perfil Emma</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">

    </head>

    <body>
        <header>
            <div class="container">
                <div class="encabezado">

                    <div class="col-md-3">
                        <img src="imagenes/1.png" width="190" height="190" class="img-responsive" >
                    </div>

                    <div class="col-md-5">
                        <nav class="Barra-navegacion">

                            <ul class="menu">   

                                <li><a href="#">Cambio de Look</a>
                                    <ul class="submenu">
                                        <li><a href="cambioLook.jsp">Generar Look</a></li>
                                        <li><a href="verLook.jsp">Ver Looks</a></li>
                                    </ul>
                                </li>

                                <li><a href="#">Promociones</a>
                                    <ul class="submenu">
                                        <li><a href="ofertas.jsp">Ver Promociones</a></li>
                                        <li><a href="">Escanear QR</a></li>
                                        <li><a href="">Mis Promociones</a></li>
                                    </ul>
                                </li>
                            </ul>

                        </nav>	
                    </div>

                    <div class="col-md-2">
                    </div>	



                    <div class="col-md-2">
                        <div class="Barra-navegacion2">
                            <center>
                                <ul class="menu">

                                    <li><a href="#" style="font-family: Perpetua Titling MT"><%

                                        HttpSession sesion = request.getSession();
                                        String usuario = sesion.getAttribute("usuario").toString();
                                        Consultas consultas = new Consultas("root", "123mao");
                                        String resultado = consultas.obtenerNombreUsuario(usuario);
                                        out.print(resultado);

                                            %> &nbsp;&nbsp;&nbsp;&nbsp; <img src="imagenes/9.png" width="25" height="25" class="img-responsive" style="display: inline-block;"></a>
                                        <ul class="submenu">
                                            <li><a href="">Cerrar Sesi&oacute;n</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </header>

        <br></br>


        <div class="container">
            <div class="col-md-12" style="background:#ffffff">
            </div> 
        </div>

        <br>

        <div class="container">

            <div class="perfil">

                <div class="col-md-1">
                </div>

                <div class="col-md-8" style="background:#4e4a6c">
                    <br></br>

                    <div class="borde">
                        <img src="imagenes/4.jpg" width="100" height="100" class="img-responsive">
                    </div>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Usuario:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">Emma</i>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Nombre Completo:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">Emma Charlotte</i>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Apellido Completo:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">Duerre Watson</i>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Edad:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">28 a&ntilde;os</i>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Correo Electronico:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">emmawat@gmail.com</i>

                    <br>

                    <i style="font-size:20px; color:#000000; font-family:Perpetua"><u>Telefono:</u></i>
                    <i style="font-size:20px; color:#ffffff; font-family: Perpetua">3137682496</i>

                    <br></br>

                    <button type="button" class="btn btn-primary">Editar Informaci&oacute;n</button>

                    <br></br>

                </div>

                <div class="col-md-3" style="background:#6d6d6d;">

                    <br></br>

                    <img src="imagenes/5.jpg" width="300" height="300" class="img-responsive">

                    <br></br>

                </div>

            </div>
        </div>	

        <br>

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
