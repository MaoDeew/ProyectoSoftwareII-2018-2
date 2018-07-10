<%-- 
    Document   : ofertas
    Created on : 30/05/2018, 01:10:16 PM
    Author     : Mao
--%>

<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>

    <head>

        <title>Loreal-Lista de Ofertas</title>
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
                    <br>

                    <b style="font-size:40px; color:#ffffff; font-family:Perpetua Titling MT"><u><i>Ofertas Disponibles</i></u></b>   

                    <br></br>

                    <p for="username" style="color:#000000; font-size:30px; font-family:Perpetua; display: inline-block;"><i>Porfavor seleccione la oferta que quiere adquirir</i></p> &nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block">
                    <img src="imagenes/7.png" width="40" height="40" class="img-responsive" style="display: inline-block">

                    <br></br>

                    <div class="funkyradio">
                        <div class="funkyradio-primary">
                            <input type="radio" name="radio" id="radio1" />
                            <label for="radio1"><center>Cup&oacute;n 1 &nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block"></center></label>
                        </div>
                        <div class="funkyradio-primary">
                            <input type="radio" name="radio" id="radio2" />
                            <label for="radio2"><center>Cup&oacute;n 2 &nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block"></center></label>
                        </div>
                        <div class="funkyradio-primary">
                            <input type="radio" name="radio" id="radio3" />
                            <label for="radio3"><center>Cup&oacute;n 3 &nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block"></center></label>
                        </div>
                        <div class="funkyradio-primary">
                            <input type="radio" name="radio" id="radio4" />
                            <label for="radio4"><center>Cup&oacute;n 4 &nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block"></center></label>
                        </div>
                        <div class="funkyradio-primary">
                            <input type="radio" name="radio" id="radio5" />
                            <label for="radio5"><center>Cup&oacute;n 5 &nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/6.png" width="70" height="70" class="img-responsive" style="display: inline-block"></center></label>
                        </div>
                    </div>

                    <br>
                   
                    <button type="button" class="btn btn-primary btn-lg btn-block" style="background: #6e6a85"><img src="imagenes/8.png" width="180" height="180" class="img-responsive" style="display: inline-block"></button>
            
                    <br></br>

                </div>
                    
                <div class="col-md-3" style="background:#6d6d6d;">
                    
                    <br></br>

                    <center>
                        <img src="imagenes/5.jpg" width="300" height="300" class="img-responsive">
                    </center>
                    
                    <br></br>

                    <div class="col-md-12" style="background: #7158fb">
                        <h1>Codigo QR a Redimir</h1>
                        <center>
                            <img src="imagenes/3.png" class="img-responsive">
                        </center>
                    </div>
                    
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
