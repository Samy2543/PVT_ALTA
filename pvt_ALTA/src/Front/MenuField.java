/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Dimension;
import java.awt.Font;
import java.util.ArrayList;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author Alan
 */
public class MenuField {

    public JLabel menu;
    public Boolean controller;
    public ArrayList<JLabel> fields;

    MenuField(String name, String[] nameFields, int x) {
        menu = MenuField.getMainMenuElement(name);
        controller = false;
        menu.setBounds(x, 0, 200, 50);
        fields = new ArrayList<JLabel>();
        for (int i = 0; i < nameFields.length; i++) {
            JLabel aux = MenuField.getMenuElement(nameFields[i]);
            aux.setBounds(x, (i + 1) * 50, 200, 50);
            aux.setVisible(controller);
            fields.add(aux);
        }
    }

    public static JLabel getMenuElement(String name) {
        JLabel label = new JLabel("   " + name);
        label.setSize(new Dimension(200, 50));
        label.setOpaque(true);
        label.setBackground(WindowElement.White);
        label.setForeground(WindowElement.Black);
        label.setFont(new Font("Malgun Gothic", Font.BOLD, 16));

        label.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
            }

            public void mouseEntered(java.awt.event.MouseEvent evt) {
                label.setBackground(WindowElement.Blue);
                label.setForeground(WindowElement.White);
            }

            public void mouseExited(java.awt.event.MouseEvent evt) {
                label.setBackground(WindowElement.White);
                label.setForeground(WindowElement.Black);
            }
        });
        return label;
    }

    public static JLabel getMainMenuElement(String name) {
        JLabel label = new JLabel("   " + name);
        label.setSize(new Dimension(200, 50));
        label.setOpaque(true);
        label.setBackground(WindowElement.Black);
        label.setForeground(WindowElement.White);
        label.setFont(new Font("Malgun Gothic", Font.BOLD, 16));

        label.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
            }

            public void mouseEntered(java.awt.event.MouseEvent evt) {
                label.setBackground(WindowElement.Blue);
                label.setForeground(WindowElement.White);
            }

            public void mouseExited(java.awt.event.MouseEvent evt) {
                label.setBackground(WindowElement.Black);
                label.setForeground(WindowElement.White);
            }
        });
        return label;
    }

    
    public static void getMenuField(String name, String[] nameFields, int x, JFrame template) {
        MenuField menu = new MenuField(name, nameFields, x);
        menu.menu.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menu.controller = !menu.controller;
                menu.SubMenu();
            }
        });
        template.add(menu.menu);
        for (int i = 0; i < menu.fields.size(); i++) {
            template.add(menu.fields.get(i));
            
            menu.fields.get(i).addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menu.controller = !menu.controller;
                menu.SubMenu();
            }
            
        });
            
        }
    }

    protected void SubMenu() {
        for (int i = 0; i < this.fields.size(); i++) {
            this.fields.get(i).setVisible(this.controller);
                System.out.println(this.controller);
        }
    }

}
