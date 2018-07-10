package Controlador;

import Objetos.Look;
import Objetos.Promocion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

/**
 * Clase conexión utilizada para hacer las consultas a la base de datos, cada consulta dividida en un metodo que se usa
 * en Servlets o en interacción directa con alguna página .jsp
 * @author Mauricio Sánchez 
 * @author Julian Pinzón
 */
public class Consultas extends Conexion{
    
    public Consultas(String user, String pass) {
        super(user, pass);
    }
    public Promocion autenticarCodigoQR(String codigo){
        
        PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT C.idCodigo Codigo,P.nombre Producto, Pr.descripcion Descripcion, C.direccionImagen Direccion\n" +
                             "from Producto P INNER JOIN Codigo C ON p.idCodigo = c.idCodigo\n" +
                             "INNER JOIN Promocion Pr ON C.idPromocion = Pr.idPromocion\n" +
                             "where C.idCodigo =?;";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, codigo);
            rs = pst.executeQuery();
            Promocion pro = new Promocion();
            while (rs.next()) {                    
                    pro.setCodigo(codigo);
                    String nombre = rs.getString("Producto");
                    pro.setNombreProducto(nombre);
                    String descripcion = rs.getString("Descripcion");
                    pro.setDecripcionPromocion(descripcion);
                    String direccion = rs.getString("Direccion");
                    pro.setDireccionImagen(direccion);
                    return pro;
            }
            
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        return null;
    }
    
    
    /**
 * Metodo para autenticar usuario en el Login del sitio web
 * @author Mauricio Sánchez 
 * @param usuario String con el nombre de usuario del Cliente
 * @param password String que recibe la contraseña del Cliente
  *@return booleano que dice si es correcto o no las credenciales del Cliente 
 */
    public boolean autenticarUsuario(String usuario, String password){
    
        PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT * FROM Usuario WHERE username=? AND password=md5(?)"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        
        return false;
    }
    
    /**
 * Metodo para obtener el nombre del usuario por medio del username
 * @author Mauricio Sánchez 
 * @param usuario String con el nombre de usuario del Cliente
  *@return String con el nombre del cliente segun el username
 */
    public String obtenerNombreUsuario(String usuario){
    PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT nombre FROM Usuario WHERE username=?"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            rs = pst.executeQuery();

                while (rs.next()) {                    
                    String resultado = rs.getString("nombre");
                    return resultado;
                }


        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        
        return "vacio";
    }
    
    
    /**
 * Metodo para autenticar usuario en el Login del sitio web
 * @author Mauricio Sánchez 
     * @param usuario Username correspondiente al Usuario
     * @param nombreLook nombre del Look traido desde el form de cambioLook.jsp
     * @param imagenURI direccion base64 de la imagne generada del look 
     * @param descripcionLook nombre del Look traido desde el form de cambioLook.jsp
  *@return String con el nombre del cliente segun el username
 */
     public boolean guardarLook(String usuario,String nombreLook, String imagenURI, String descripcionLook){
    
        PreparedStatement pst=null;
        
        try {
            String consulta = "insert into Look (idUsuario, nombre, direccionImagen, descripcion) values ((select idUsuario from Usuario where username=?),?,?,?)"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, nombreLook);
            pst.setString(3, imagenURI);
            pst.setString(4, descripcionLook);
           
            if (pst.executeUpdate() == 1) {
                return true;
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return false;
    }

    
     
      /**
 * Listado de los looks de un usuario especifico por su username
 * @author Mauricio Sánchez 
     * @param usuario Username correspondiente al Usuario
     * @return LinkedList de tipo objeto Look
 */
     public LinkedList<Look> listadoLooks(String usuario){
    
        PreparedStatement pst =null;
        ResultSet rs = null;
        LinkedList<Look> lista = new LinkedList<>();
        try {
            
            String consulta ="select nombre, descripcion, direccionImagen "
                    + "from Look where idUsuario=((select idUsuario from Usuario where username=?));";//Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            rs = pst.executeQuery();
          
            while (rs.next()) {
                Look l = new Look();
                l.setNombre(rs.getString("nombre"));
                l.setDescripcion(rs.getString("descripcion"));
                l.setNombre(rs.getString("direccionImagen"));
                lista.add(l);
            }
            
            rs.close();
            pst.close();
            
        } catch (Exception e) {
        }
        return lista;
    }
}
