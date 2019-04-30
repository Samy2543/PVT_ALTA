/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Dimension;
import javax.swing.*;

/**
 *
 * @author Alan
 */
public class Login {

    JFrame login;

    Login() {
        JFrame login = WindowElement.getTemplate(new Dimension(490, 665), 50, 0, 210, 30, 0, WindowElement.PinkStyle.Right_Left);
        login.setLocationRelativeTo(null);
        login.setVisible(true);
    }
    
    public static void main(String args[]){
        Login login = new Login();
    }
}
