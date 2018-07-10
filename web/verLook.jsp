<%-- 
    Document   : verLook
    Created on : 30/05/2018, 02:21:55 AM
    Author     : Mao
--%>

<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>

    <head>

        <title>Cambio Look</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">

    </head>

    <body>
        <header>
            <div class="container">
                <div class="encabezado">

                    <div class="col-md-3">
                        <a href="inicio.jsp"><img src="imagenes/1.png" width="190" height="190" class="img-responsive" ></a>
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
                                            <li><a href="">Ver Perfil</a></li>
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
            aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
        </div>

        <br>

        <div class="container">
            <div class="col-md-12" style="background:#ffffff">
            </div> 
        </div>


        <br></br>
        <br></br>
        <br></br>

        <div class="footer" style="position: absolute;top: 810px;">
            <p>LOreal group privacy statement</p>
            <p>Terms of use for this site</p>
            <p>All rights reserved @2018</p>
        </div>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>


</html>
