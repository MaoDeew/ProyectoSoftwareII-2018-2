<%-- 
    Document   : cambioLook
    Created on : 25/05/2018, 04:33:29 PM
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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.6.1/p5.js"></script>
        <script src="js/p5.dom.js"></script>
        <script src="js/scriptImagen.js"></script>
        <link rel="stylesheet" href="css/peinados.css">

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

            <div id="divMenuCortes1">

                <li><a id="seleccion1Corte" href="#"><img id='corte1' src='img/corte1.png' alt='corte1' width='100' height='120'></a></li>
                <li><a id="seleccion2Corte" href="#"><img id='corte2' src='img/corte2.png' alt='corte2' width='100' height='120'></a></li>
                <li><a id="seleccion3Corte" href="#"><img id='corte3' src='img/corte3.png' alt='corte3' width='100' height='120'></a></li>
            </div>

            <div id="divMenuCortes2">

                <li><a id="seleccion4Corte" href="#"><img id='corte4' src='img/corte4.png' alt='corte4' width='100' height='120'></a></li>
                <li><a id="seleccion5Corte" href="#"><img id='corte5' src='img/corte5.png' alt='corte5' width='100' height='120'></a></li>
                <li><a id="seleccion6Corte" href="#"><img id='corte6' src='img/corte6.png' alt='corte6' width='100' height='120'></a></li>
            </div>

            <div id="divMenuTintes">

                <li><a id="seleccion1Tinte" href="#"><img id='tinte1' src='img/tinte1.png' alt='tinte1' width='70' height='70'></a></li>
                <li><a id="seleccion2Tinte" href="#"><img id='tinte2' src='img/tinte2.png' alt='tinte2' width='70' height='70'></a></li>
                <li><a id="seleccion3Tinte" href="#"><img id='tinte3' src='img/tinte3.png' alt='tinte3' width='70' height='70'></a></li>
                <li><a id="seleccion4Tinte" href="#"><img id='tinte4' src='img/tinte4.png' alt='tinte4' width='70' height='70'></a></li>
            </div>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
            <form action="GuardarLook" method="POST">
                <input  type="hidden" name="URICanvas" value="">
                <button type="submit" class="btn btn-danger btn-sm" style="position: absolute;top: 180px;left: 100px;">Guardar Look</button>
				
				
				<div class="col-sm-4"></div>

                <div class="form-group col-sm-4" style="position: absolute;left: 800px;top: 170px;">
                    <label for="usr">Nombre Look:</label>
                    <input type="text" class="form-control" name="nombreLook">
                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4"></div>
                <div class="form-group col-sm-4" style="position: absolute;left: 800px;top: 245px;">
                    <label for="pwd">Descripcion:</label>
                    <textarea class="form-control" rows="5" name="descripcionLook"></textarea>
                </div> 

            </form>

            <div id="divLookGenerado"></div>

        </div>	
		
        <br>

        <div class="container">
            <div class="col-md-12">
            </div> 
        </div>


        <br></br>
        <br></br>
        <br></br>

        <div class="footer" style="position: absolute;top: 950px;">
            <p>LOreal group privacy statement</p>
            <p>Terms of use for this site</p>
            <p>All rights reserved @2018</p>
        </div>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>


</html>
