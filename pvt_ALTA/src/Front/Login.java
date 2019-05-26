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

    public JFrame login;
    private JTextField userJTF;
    private JPasswordField passJTF;
    private Boolean IsVerifyed;

    Login() {
        /*
        String[] names = {"Registrar usuario", "Configurar usuario"};
        MenuBar menuBar = new MenuBar();

        menuBar.addMenuField("Usuarios", names, 0);
        menuBar.addMenuField("Usuarios", names, 1);
         */
        JPanel panel = new JPanel();
        prepareFields();
        this.getLoginPanel(panel);
        JFrame login = WindowElement.getTemplate(
                new Dimension(490, 665),
                80, 0, 210, 10, 0, 30, 0,
                WindowElement.PinkStyle.Right_Left,
                null,
                panel
        );
        login.setLocationRelativeTo(null);
        login.setVisible(true);
    }

    public void getLoginPanel(JPanel panel) {
        panel.setLayout(null);
        JLabel user = new JLabel(new ImageIcon(getClass().getResource("/Front/surce/user.png")));
        JLabel pass = new JLabel(new ImageIcon(getClass().getResource("/Front/surce/password.png")));
        
        user.setBounds(154, 27, 183, 133);
        pass.setBounds(170, 247, 152, 113);

        panel.add(userJTF);
        panel.add(passJTF);
        panel.add(getEnterButton());
        panel.add(user);
        panel.add(pass);
    }

    private void prepareFields() {
        prepareUserTextField();
        preparePasswordField();
    }

    private void prepareUserTextField() {
        userJTF = new JTextField();
        userJTF.setBounds(100, 160, 290, 50);
        userJTF.setHorizontalAlignment(JTextField.CENTER);
        userJTF.setForeground(WindowElement.Black);
        userJTF.setFont(userJTF.getFont().deriveFont((float) 20));
        userJTF.setBorder(new BorderRadius(WindowElement.Black));
        userJTF.setBackground(WindowElement.White);
    }

    private void preparePasswordField() {
        passJTF = new JPasswordField();
        passJTF.setBounds(100, 360, 290, 50);
        passJTF.setHorizontalAlignment(JTextField.CENTER);
        passJTF.setForeground(WindowElement.Black);
        passJTF.setFont(passJTF.getFont().deriveFont((float) 20));
        passJTF.setBorder(new BorderRadius(WindowElement.Black));
        passJTF.setBackground(WindowElement.White);
    }

    private JButton getEnterButton() {
        JButton enterButton = new JButton("Entrar");
        enterButton.setBounds(100, 460, 290, 100);
        enterButton.setFont(enterButton.getFont().deriveFont((float) 60));
        enterButton.setBorder(new BorderRadius(WindowElement.Pink));
        enterButton.setBackground(WindowElement.Pink);
        enterButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                verify();
            }
        });
        return enterButton;
    }

    private void verify() {
        System.out.println(userJTF.getText());
        System.out.println(passJTF.getText());
        setIsVerifyed(true);
        System.out.println(getIsVerifyed());
    }
    
    public Boolean getIsVerifyed(){
        return IsVerifyed;
    }
    
    private void setIsVerifyed(Boolean boolVar){
        this.IsVerifyed = boolVar;
    }
    
    public String getUserName(){
        return userJTF.getText();
    }

    public static void main(String args[]) {
        Login login = new Login();
    }
}
