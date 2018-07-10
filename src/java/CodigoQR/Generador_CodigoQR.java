/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//Codigo reutilizado de http://monillo007.blogspot.com.co/2011/10/generar-codigos-qr-en-java-utilizando.html
package CodigoQR;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.awt.Desktop;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import javax.imageio.ImageIO;

/**
 *
 * @author Julian Pinzon
 */
public class Generador_CodigoQR {

    private static final String FORMATO_IMAGEN = "jpg";// Formato que se desea el codigo QR
    private static final String RUTA_IMAGEN = "qr_generados/qr.jpg";//Direccion donde se guardadra el coosigo QR /Users/julian/Documents
    private static final int ancho = 500; //Ancho del codigo QR
    private static final int alto = 500; //Alto del Codigo QR
    private static String datos = "Hola"; //Datos del codigo QR
    
    public Generador_CodigoQR() throws Exception {
        Writer writer = new QRCodeWriter();   //Se Genera la matriz de datos a dibujar llamando las librerias.
        BitMatrix matriz;
        try{
            matriz = writer.encode(datos, BarcodeFormat.QR_CODE, ancho, alto);
        }catch(WriterException e){
            e.printStackTrace(System.err);
            return;
        }
        
        BufferedImage image = new BufferedImage(ancho, alto, BufferedImage.TYPE_INT_RGB); 
        
        for (int y = 0; y < ancho; y++) { 
            for (int x = 0; x < alto; x++) { 
                int grayValue = (matriz.get(x, y) ? 1 : 0) & 0xff; 
                image.setRGB(x, y, (grayValue == 0 ? 0 : 0xFFFFFF)); 
            } 
        } 
        image = invertirColores(image);//Debido a un bug se tiene que invertir el color del fondo para que se reconozca el codigo QR 
        FileOutputStream qrCode = new FileOutputStream(RUTA_IMAGEN);
        ImageIO.write(image, FORMATO_IMAGEN, qrCode);
        System.out.println("Listo!");
        qrCode.close();
        
        //Desktop d = Desktop.getDesktop(); Esta parte es para ver de en el momento la imagen creada 
        //d.open(new File(RUTA_IMAGEN)); 
    }
    
    
    
    //Para arreglar el bug que genera al tener el fondo negro del codigo y se pueda leer..
    private static  BufferedImage invertirColores(BufferedImage imagen) { 
        for (int x = 0; x < ancho; x++) { 
            for (int y = 0; y < alto; y++) { 
                int rgb = imagen.getRGB(x, y); 
                if (rgb == -16777216) { 
                    imagen.setRGB(x, y, -1); 
                } else { 
                    imagen.setRGB(x, y, -16777216); 
                } 
            } 
        } 
        return imagen; 
    }

    
}
