
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.jasper.tagplugins.jstl.core.Url;

public class Conexion {
    String usuario  = "root"; 
    String password = ""; 
    String url = "jdbc:mysql://localhost:3306/shopytienda"; 
    Connection conex; 
    Statement statement; 
    ResultSet rs; 
    String driver = "com.mysql.jdbc.Driver"; 
    
    public Connection Conexion(){  
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); //carga una clase de manera dinámica en tiempo de ejecución. 
            try {
                conex = DriverManager.getConnection(url, usuario, password); //Establece una conexión con la bd
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("No hay conexión con "+url);
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conex;
    } 
}
   
 