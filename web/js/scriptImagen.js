var dragging = false; // Hcae que sepa si esta siendo seleccionado y arrastrando la imagen del corte
var rollover = false; // Hace que sepa si el mouse esta sobre el peinado o no

var x, y, w, h;          // Location and size
var offsetX, offsetY;    // Mouseclick offset
var auxDibujo;			// Quitar o dibujar imagen del corte

var imgFondo;

var imgCorte1;var imgCorte2;var imgCorte3;var imgCorte4;var imgCorte5;var imgCorte6;

var divMenuCortes1;var divMenuCortes2;var divMenuTintes;

//Botones
var botonBorrar;var botonAngostar;var botonEstirar;var botonAlargar;var botonCortar;var botonResetColor; 
var botonModelo1; var botonModelo2; var botonModelo3; var botonSubirImagen; var botonGenerar;

//Direccion Imagenes Modelos;
var direccionModelo1 = "img/perfil1.jpg";
var direccionModelo2 = "img/perfil2.jpg";
var direccionModelo3 = "img/perfil3.jpg";

//Imagen Canvas Generada tras haber hecho algún look
var imagenCanvasGeneradaURI;
var imagenGenerada;

//Accion de Seleccion peinado y su imagen
var seleccionPeinado1;var seleccionImagen1;
var seleccionPeinado2;var seleccionImagen2;
var seleccionPeinado3;var seleccionImagen3;
var seleccionPeinado4;var seleccionImagen4;
var seleccionPeinado5;var seleccionImagen5;
var seleccionPeinado6;var seleccionImagen6;

//Accion d tinte peinado
var seleccionTinte1; 
var seleccionTinte2;
var seleccionTinte3;
var seleccionTinte4;
var habilitarTinte;

var canvasLook;

function setup() {
  canvasLook = createCanvas(440, 520);
  canvasLook.id("canvasLook");
  //elementos HTML
  botonBorrar = createButton("Borrar Selección");
  botonGenerar = createButton("Generar Look");
  botonAngostar = createButton("Angostar Corte");
  botonEstirar = createButton("Estirar Corte");
  botonAlargar = createButton("Alargar corte");
  botonCortar = createButton("Acortar corte");
  botonResetColor = createButton("Resetear Tinte");
  botonModelo1 = createButton("Modelo 1");
  botonModelo2 = createButton("Modelo 2");
  botonModelo3 = createButton("Modelo 3");
  botonSubirImagen = createFileInput(leerArchivo);

  divMenuCortes1 = select("#divMenuCortes1");
  divMenuCortes1.style("background-color","black");
  divMenuCortes1.position(480,345);
  seleccionPeinado1 = select("#seleccion1Corte");
  seleccionPeinado2 = select("#seleccion2Corte");
  seleccionPeinado3 = select("#seleccion3Corte");
  seleccionPeinado4 = select("#seleccion4Corte");
  seleccionPeinado5 = select("#seleccion5Corte");
  seleccionPeinado6 = select("#seleccion6Corte");

  divMenuCortes2 = select("#divMenuCortes2");
  divMenuCortes2.style("background-color","black");
  divMenuCortes2.position(480,470);

  divMenuTintes = select("#divMenuTintes");
  divMenuTintes.style("background-color","black");
  divMenuTintes.position(480,620);
  seleccionTinte1 = select("#seleccion1Tinte");
  seleccionTinte2 = select("#seleccion2Tinte");
  seleccionTinte3 = select("#seleccion3Tinte");
  seleccionTinte4 = select("#seleccion4Tinte");
  

  botonBorrar.id("botonBorrar");

  botonModelo1.addClass('btn btn-info');
  botonModelo2.addClass('btn btn-info');
  botonModelo3.addClass('btn btn-info');

  botonBorrar.addClass('btn btn-primary btn-sm');
  botonAngostar.addClass('btn btn-primary btn-sm');
  botonAlargar.addClass('btn btn-primary btn-sm');
  botonEstirar.addClass('btn btn-primary btn-sm');
  botonCortar.addClass('btn btn-primary btn-sm');
  botonGenerar.addClass('btn btn-primary btn-sm');
  botonResetColor.addClass('btn btn-primary btn-sm');
  
  botonBorrar.position(310,180);
  botonAngostar.position(440,160); botonEstirar.position(550,160);
  botonAlargar.position(440,195);  botonCortar.position(540,195);
  botonResetColor.position(470,700); botonGenerar.position(210,180);
  botonModelo1.position(485,270); botonModelo2.position(580,270); botonModelo3.position(675,270);
  botonSubirImagen.position(105,230);

  canvasLook.position(25,265);

  imgFondo = loadImage(direccionModelo1);
  imgCorte1 = loadImage("img/corte1.png");
  imgCorte2 = loadImage("img/corte2.png");
  imgCorte3 = loadImage("img/corte3.png");
  imgCorte4 = loadImage("img/corte4.png");
  imgCorte5 = loadImage("img/corte5.png");
  imgCorte6 = loadImage("img/corte6.png");
  botonModelo1.mousePressed(function(){
    imgFondo = loadImage(direccionModelo1);
  });
  botonModelo2.mousePressed(function(){
    imgFondo = loadImage(direccionModelo2);
  });
  botonModelo3.mousePressed(function(){
    imgFondo = loadImage(direccionModelo3);
  });


  auxDibujo = false;

  seleccionImagen1 = false;seleccionImagen2 = false;seleccionImagen3 = false;seleccionImagen4 = false;seleccionImagen5 = false;seleccionImagen6 = false;

  habilitarTinte = 0;

  // Posicion inicial
  x = 10;
  y = 10;
  // Dimensiones
  w = width-(0.1*width);
  h = height-(0.1*height);




}

function leerArchivo(file){
if (file.type === 'image') {
    var img = createImg(file.data).hide();
    print (img);
 
    imgFondo = img;
  }else{
    alert("No es un formato de imagen");
  }
}

function draw() {
  background(255);
  
  
  // Mira si el mouse esta sobre la imagen del peinado
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    rollover = true;
  } 
  else {
    rollover = false;
  }
  
  // Ajusta la nueva ubicacion del peinado tras movimiento del mouse
  if (dragging) {
    x = mouseX + offsetX;
    y = mouseY + offsetY;
  }

  image(imgFondo,0, 0, width, height); 
 seleccionPeinado1.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = true;
 	seleccionImagen2 = false;
 	seleccionImagen3 = false;
 	seleccionImagen4 = false;
 	seleccionImagen5 = false;
 	seleccionImagen6 = false;
  return seleccionImagen1;

 });

 seleccionPeinado2.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = false;
 	seleccionImagen2 = true;
 	seleccionImagen3 = false;
 	seleccionImagen4 = false;
 	seleccionImagen5 = false;
 	seleccionImagen6 = false;
 });

 seleccionPeinado3.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = false;
 	seleccionImagen2 = false;
 	seleccionImagen3 = true;
 	seleccionImagen4 = false;
 	seleccionImagen5 = false;
 	seleccionImagen6 = false;
 });

 seleccionPeinado4.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = false;
 	seleccionImagen2 = false;
 	seleccionImagen3 = false;
 	seleccionImagen4 = true;
 	seleccionImagen5 = false;
 	seleccionImagen6 = false;
 });

 seleccionPeinado5.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = false;
 	seleccionImagen2 = false;
 	seleccionImagen3 = false;
 	seleccionImagen4 = false;
 	seleccionImagen5 = true;
 	seleccionImagen6 = false;
 });

 seleccionPeinado6.mousePressed(function(){
 	auxDibujo=true;
 	seleccionImagen1 = false;
 	seleccionImagen2 = false;
 	seleccionImagen3 = false;
 	seleccionImagen4 = false;
 	seleccionImagen5 = false;
 	seleccionImagen6 = true;
 });

 seleccionTinte1.mousePressed(function(){
 	habilitarTinte = 1;


 });

 seleccionTinte2.mousePressed(function(){
 	habilitarTinte = 2;

 });

 seleccionTinte3.mousePressed(function(){
 	habilitarTinte = 3;

 });

 seleccionTinte4.mousePressed(function(){
 	habilitarTinte = 4;

 });

 botonBorrar.mousePressed(function(){
 	auxDibujo=false;
 	seleccionImagen1 = false;
 	seleccionImagen2 = false;
 	seleccionImagen3 = false;
 	seleccionImagen4 = false;
 	seleccionImagen5 = false;
 	seleccionImagen6 = false;
 });

 botonResetColor.mousePressed(function(){
 	location.reload();

 });


 botonAngostar.mousePressed(function(){
 	w = w - 5;
 });

 botonEstirar.mousePressed(function(){
 	w = w + 5;
 });

 botonAlargar.mousePressed(function(){
 	h = h + 5;
 });

 botonCortar.mousePressed(function(){
 	h = h - 5;
 });

  if(auxDibujo==true && seleccionImagen1==true){
  	dibujarCorteImagen(imgCorte1,habilitarTinte);
  }
  	if(auxDibujo==true && seleccionImagen2==true){
  	dibujarCorteImagen(imgCorte2,habilitarTinte);
  }
  	if(auxDibujo==true && seleccionImagen3==true){
  	dibujarCorteImagen(imgCorte3,habilitarTinte);
  }

  if(auxDibujo==true && seleccionImagen4==true){
  	dibujarCorteImagen(imgCorte4,habilitarTinte);
  }

  if(auxDibujo==true && seleccionImagen5==true){
  	dibujarCorteImagen(imgCorte5,habilitarTinte);
  }

  if(auxDibujo==true && seleccionImagen6==true){
  	dibujarCorteImagen(imgCorte6,habilitarTinte);
  }

  botonGenerar.mousePressed(function(){
     imagenCanvasGeneradaURI = ($('#canvasLook')[0]).toDataURL("image/png");
    document.forms[0].URICanvas.value=""+imagenCanvasGeneradaURI;
    console.log(imagenCanvasGeneradaURI);
    imagenGenerada = createImg(imagenCanvasGeneradaURI);
    imagenGenerada.position(800,425);
  });
  

}

function mousePressed() {
  moverPeinado();
}




function dibujarCorteImagen(imagen, color){

 	imagen.loadPixels();
	switch(color) {

	case 0: image(imagen,x, y, w, h); habilitarTinte = 0;
		break;

    case 1:
			
			for (var i = 0; i < imagen.pixels.length; i+=4) {
			imagen.pixels[i] *=1; //red
			imagen.pixels[i+1] *=0; //green
			imagen.pixels[i+2] *=1; //blue
		}
		habilitarTinte = 0;
		imagen.updatePixels();
		image(imagen,x, y, w, h);
		
        break;
    case 2:
			
			for (var i = 0; i < imagen.pixels.length; i+=4) {
			imagen.pixels[i] *=1; //red
			imagen.pixels[i+1] *=0; //green
			imagen.pixels[i+2] *=0; //blue
		}
		habilitarTinte = 0;
		imagen.updatePixels();
		image(imagen,x, y, w, h);
		

        break;

     case 3:
			
			for (var i = 0; i < imagen.pixels.length; i+=4) {
			imagen.pixels[i] *=1; //red
			imagen.pixels[i+1] *=1; //green
			imagen.pixels[i+2] *=0; //blue
		}
		habilitarTinte = 0;
		imagen.updatePixels();
		image(imagen,x, y, w, h);

		
     	break;

     case 4:
			for (var i = 0; i < imagen.pixels.length; i+=4) {
			imagen.pixels[i] *=0; //red
			imagen.pixels[i+1] *=0; //green
			imagen.pixels[i+2] *=1; //blue
		}
		habilitarTinte = 0;
		imagen.updatePixels();
		image(imagen,x, y, w, h);

		
     	break;


} 
	
}



function moverPeinado(){

	//Ver si esta o no dando clic al corte de cabello
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    dragging = true;
    // Si es así, mantener la posición relativa a la que va moviendo el mouse y su offset
    offsetX = x-mouseX;
    offsetY = y-mouseY;
  }


}

function mouseReleased() {
  // Quit dragging
  dragging = false;
}

