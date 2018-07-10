<%-- 
    Document   : inicio.jsp
    Created on : 29/05/2018, 10:16:17 PM
    Author     : Mao
--%>

<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Bienvenido a Loreal-Inicio</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">

    </head>
    <% try { %>
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
                                            <li><a href="">Iniciar Sesi&oacute;n</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </center>
                        </div>
                    </div>

                </div>
            </div>

        </header>

        <br>

        <div class="container">
            <div class="cuerpo">

                <div class="col-md-4" style="background:#9e9e9e">

                    <br>

                    <h1>Bienvenido a tu nuevo look!</h1>
                    <h3>Consigue el Codigo QR que viene en nuestros productos</h3>

                    <div class="centrado">
                        <img src="imagenes/3.png" class="img-responsive">
                    </div>

                    <h3>
                        Y capturalo con nuestra aplicacion para obtener... 
                    </h3>

                    </br>


                </div>

                <div class="col-md-1">
                </div>

                <div class="col-md-7" style="background:#9e9e9e">
                    <br>
                    <img src="imagenes/2.jpg" class="img-responsive">
                    <div class="fondo-qr">
                        <h1>
                            <br>
                            GRANDES PROMOCIONES!!!!!
                            <br></br>
                        </h1>
                    </div>
                    <br>
                </div>
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
    <%  } catch (NullPointerException e) {
            response.sendRedirect("index.jsp");
            session.invalidate();
        }

    %>
</html>
