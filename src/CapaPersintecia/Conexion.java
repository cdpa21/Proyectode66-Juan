/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaPersintecia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Conexion {
 public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/inasistencias_db?serverTimezone=UTC",
                "root",
                "" 
            );

        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "No se encontró el Driver MySQL: " + e.getMessage());

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error al conectar a MySQL: " + e.getMessage());
        }

        return con;
    }
    
   
}

           