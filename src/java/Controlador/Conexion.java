package Controlador;

/**
 *
 * @author Mauricio Sánchez
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "dbSoftware";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;

    private Connection con;

    public Conexion(String user, String pass) {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, user, pass);
            System.out.println("Conectado con base de datos");
        } catch (ClassNotFoundException e) {
            System.err.println("Error: " + e);
        } catch (SQLException ex) {
            System.err.println("Error SQL: " + ex);
        }
    }

    public Connection getConexion() {
        return con;
    }
}
