/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controlador.Consultas;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Mauricio Sánchez
 */
public class ConsultasTest {
    
    private static Consultas consultas;
    public ConsultasTest() {
        consultas = new Consultas("root", "123mao");
        
        consultas.guardarLook("andreaji", "Nombre", "imagenURI", "descripcionLook");
    }
    
    @BeforeClass
    public static void setUpClass() {
        
        
    }
    
    @Test
    public void testConexionBaseDeDatos(){

        assertNotNull(consultas.getConexion());
    
    }
    
    
    @Test
    public void testLoginUsuario(){

        assertEquals(true, consultas.autenticarUsuario("andreaji", "andrea123"));
    
    }
    
    @Test
    public void testListadoLooks(){

       int tamaño = consultas.listadoLooks("andreaji").size();
        assertNotEquals(0, tamaño);
    
    }
    
    @Test
    public void testGeneracionLook(){
        
       
    
    }
    
}
