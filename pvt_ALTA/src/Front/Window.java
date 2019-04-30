package Front;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.*;
import javax.swing.border.Border;

/**
 *
 * @author Alan
 */
public class Window {

    public static void main(String args[]) {
        
        JFrame template = new JFrame();

        JLabel black = new JLabel();
        JLabel blue = new JLabel();
        JLabel white = new JLabel();
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

        black.setBounds(0, 0, 1200, 800);
        blue.setBounds(0, 50, 1200, 740);
        white.setBounds(0, 60, 1200, 720);
        pink1.setBounds(0, 60, 400, 10);
        pink2.setBounds(800, 770, 400, 10);

        template.add(pink1);
        template.add(pink2);
        template.add(white);
        template.add(blue);
        template.add(black);

        template.setSize(new Dimension(1200, 800));

        //template.setBackground(Color.decode("#eaeaea"));
        template.setLayout(null);
        //template.setUndecorated(true);
    }
}
