/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Dimension;
import java.util.ArrayList;
import javax.swing.*;

/**
 *
 * @author Alan
 */
public class Login {

    JFrame login;

    Login() {
        String[] names = {"Registrar usuario", "Configurar usuario"};
        MenuBar menuBar = new MenuBar();
        
        menuBar.addMenuField("Usuarios", names, 0);
        menuBar.addMenuField("Usuarios", names, 1);
        
        JFrame login = WindowElement.getTemplate(new Dimension(490, 665), 50, 0, 210, 10, 0, 30, 0, WindowElement.PinkStyle.Right_Left, null);
        login.setLocationRelativeTo(null);
        login.setVisible(true);
    }
    
    public static void main(String args[]){
        Login login = new Login();
    }
}
