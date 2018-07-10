/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//Codigo reutilizado de http://monillo007.blogspot.com.co/2011/10/leer-interpretardecodificar-codigos-qr.html
package CodigoQR;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;

/**
 *
 * @author Julian Pinzon
 */
public class Lector_CodigoQR {
   Reader lector = new MultiFormatReader(); // Objeto de tipo Reader que realizara la interpretacion del codigo QR 
   File ubicacionImagen = new File("qr_generados/qr.jpg");  //  El archivo que contiene la imagen con el codigo a interpretar. 
   BufferedImage imagen;// Utilizado para leer la imagen. 
   
   public Lector_CodigoQR () throws Exception{// Es necesario los trhows para los posibles errores que se den dentro de la busqueda y la lectura
        if(ubicacionImagen.exists()) {
            imagen = ImageIO.read(ubicacionImagen);//
            LuminanceSource fuente = new BufferedImageLuminanceSource(imagen);
            BinaryBitmap mapaBits = new BinaryBitmap(new HybridBinarizer(fuente));
            Result resultado = lector.decode(mapaBits); //Genera el resultado final del codigo
            
            //Esta parte muestra el contenido del codigo con el resultado.getText(), importante para la conexion de la base de datos.
            System.out.println("Contenido del codigo = "+resultado.getText()); 
        }
    }
}
