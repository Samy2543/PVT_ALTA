
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author samug
 */
public class Conexion {

    private String url="localhost:3306/pv_alta?useTimezone=true&serverTimezone=UTC";//jdbc:mysql://localhost:3306/?user=root
    // ?useTimezone=true&serverTimezone=UTC esto fue solo necesario en mi maquina, si no les cuasa problema quitenlo
    private String usuario="root";
    private String clave="";
    
    private static Connection cnx = null;

    public Conexion() {
        try {
            cnx=obtener();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public  Connection obtener() throws SQLException, ClassNotFoundException {
        if (cnx == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                
               cnx = DriverManager.getConnection("jdbc:mysql://"+this.url, this.usuario,this.clave);  
               //cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/pv_alta?user=root&password=123;");
                System.out.println("$$$$$$$$$ Conectado Exitosamente $$$$$$$$ \n");
            } catch (SQLException ex) {
                throw new SQLException(ex);
            } catch (ClassNotFoundException ex) {
                throw new ClassCastException(ex.getMessage());
            }
        }
        return cnx;
    }

    public static void cerrar() throws SQLException {
        if (cnx != null) {
            cnx.close();
        }
    }
    
    public static void insertar(String sentencia) throws SQLException{
    PreparedStatement consulta = cnx.prepareStatement(sentencia);
    consulta.execute(sentencia);
    
    }
    
    public static void eliminar(String sentencia) throws SQLException{
    PreparedStatement consulta = cnx.prepareStatement(sentencia);
    consulta.execute(sentencia);
    
    }
    
    public static void actualizar(String sentencia) throws SQLException{
    PreparedStatement consulta = cnx.prepareStatement(sentencia);
    consulta.execute(sentencia);
    
    }
    
    public static ResultSet buscar(String sentencia) throws SQLException{
    ResultSet resultado=null;
    System.out.println(sentencia);
    PreparedStatement consulta = cnx.prepareStatement(sentencia);
    resultado = consulta.executeQuery();      
    return resultado;
    }
    
}