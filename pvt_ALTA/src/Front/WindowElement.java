/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.Border;
import javax.swing.border.MatteBorder;

/**
 *
 * @author Alan
 */
public class WindowElement {

    public enum WindowColor {
        White, Black, Blue, Pink
    };

    enum PinkStyle {
        Left_Right, Right_Left
    };

    public static Color White = Color.decode("#eaeaea");
    public static Color Black = Color.decode("#444444");
    public static Color Blue = Color.decode("#00D1CD");
    public static Color Pink = Color.decode("#f30067");

    public static Border GetMenuBorder(WindowColor color, int punto) {
        return BorderFactory.createMatteBorder(0, punto, punto, punto, getColor(color));
    }
    
    public static Border GetRadiusBorder(WindowColor color, int punto, int radius) {
        return BorderFactory.createMatteBorder(punto, punto, punto, punto, getColor(color));
    }

    public static Color getColor(WindowColor color) {
        switch (color) {
            case White:
                return White;
            case Black:
                return Black;
            case Blue:
                return Blue;
            case Pink:
                return Pink;
            default:
                return White;
        }
    }

    public static Dimension WindowSize(int width, int height) {
        return new Dimension(width, height);
    }

    public static JFrame getTemplate(
            Dimension size, 
            int header, 
            int footer, 
            int pWidth, 
            int bHeaderHeight, 
            int bFooterHeight, 
            int pHeaderHeight, 
            int pFooterHeight, 
            PinkStyle style, 
            MenuBar menu, 
            JPanel white
    ) {
        JFrame template = new JFrame();

        JLabel black = new JLabel();
        JLabel blue = new JLabel();
        JLabel pink1 = new JLabel();
        JLabel pink2 = new JLabel();

        black.setOpaque(true);
        blue.setOpaque(true);
        white.setOpaque(true);
        pink1.setOpaque(true);
        pink2.setOpaque(true);

        //menu.setBorder(border);
        black.setBackground(WindowElement.Black);

        blue.setBackground(WindowElement.Blue);

        white.setBackground(WindowElement.White);

        pink1.setBackground(WindowElement.Pink);

        pink2.setBackground(WindowElement.Pink);
        //menu.setBounds(0, 0, 320, 50);

        black.setBounds(0, 0, size.width, size.height);
        blue.setBounds(0, header, size.width, (size.height - footer - header));
        white.setBounds(0, (header + bHeaderHeight), size.width, (size.height - footer - header - bHeaderHeight - bFooterHeight));
        switch (style) {
            case Left_Right:
                pink1.setBounds(0, (header), pWidth, pHeaderHeight);
                pink2.setBounds((size.width - pWidth), (size.height - footer - pHeaderHeight), pWidth, pFooterHeight);
                break;
            case Right_Left:
                pink1.setBounds((size.width - pWidth), (header), pWidth, pHeaderHeight);
                pink2.setBounds(0, (size.height - footer - pHeaderHeight), pWidth, pFooterHeight);
                break;
        }

        JLabel close = new WindowElement().getCloseLabel(template);

        int padding = (header - close.getIcon().getIconHeight()) / 2;
        int closeWidht = close.getIcon().getIconWidth();
        int closeHeight = close.getIcon().getIconHeight();
        close.setBounds(size.width - closeWidht - padding, padding, closeWidht, closeHeight);

        //template.add(WindowElement.getMenuElement("Registra usuario"));
        try {
            for (int i = 0; i < menu.menuBar.size(); i++) {
                menu.menuBar.get(i).getMenuField(template);
            }
        } catch (Exception e) {
            JLabel logo = new WindowElement().getLogoLabel();
            logo.setBounds(0, 10, 430, 161);
            //template.add(logo);
        }

        template.add(close);

        template.add(pink1);

        template.add(pink2);

        // JPanel con el contenido de la pantalla
        template.add(white);

        template.add(blue);

        template.add(black);

        template.setSize(size);

//login.setBackground(Color.decode("#eaeaea"));
        //template.setLayout(null);
        template.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        template.setUndecorated(true);
        template.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    menu.someoneTyped();
                } catch (Exception e) {
                }
            }
        });
        return template;
    }

    public JLabel getCloseLabel(JFrame template) {
        JLabel label = new JLabel(new ImageIcon(getClass().getResource("/Front/surce/x.png")));

        label.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                template.dispose();
            }
        });
        return label;
    }
    
    public JLabel getLogoLabel() {
        JLabel label = new JLabel(new ImageIcon(getClass().getResource("/Front/surce/logo.png")));
        return label;
    }

}
