
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;

public class personavalidada {
   PreparedStatement ps; 
   ResultSet rs; 
   Connection con;
   Conexion cn = new Conexion();
   public personavalidada(){
   }
    public int validar(Persona per){
       int r=0; 
       String sql = "SELECT * FROM `registrocliente` WHERE Nombres = ? AND Correo = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getNom());
            ps.setString(2, per.getCorreo());
            rs = ps.executeQuery();
            while(rs.next()){
                r++;
                per.setNom(rs.getString("Nombres"));
                per.setCorreo(rs.getString("Correo"));
            }   
            if(r >= 1)
                return 1;
            else
                return 0;
            
        } catch (SQLException e) {
            
        }
        return 0;
      
    }
}
