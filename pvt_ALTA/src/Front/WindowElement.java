/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Color;
import java.awt.Dimension;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.border.Border;

/**
 *
 * @author Alan
 */
public class WindowElement {

    enum WindowColor {
        White, Black, Blue, Pink
    };

    enum PinkStyle {
        Left_Right, Right_Left
    };

    public static Color White = Color.decode("#eaeaea");
    public static Color Black = Color.decode("#444444");
    public static Color Blue = Color.decode("#00D1CD");
    public static Color Pink = Color.decode("#f30067");

    public static Border GetBorder(WindowColor color, int punto) {
        Border border = BorderFactory.createLineBorder(White, punto);

        switch (color) {
            case White:
                border = BorderFactory.createLineBorder(White, punto);
                break;
            case Black:
                border = BorderFactory.createLineBorder(Black, punto);
                break;
            case Blue:
                border = BorderFactory.createLineBorder(Blue, punto);
                break;
            case Pink:
                border = BorderFactory.createLineBorder(Pink, punto);
                break;
        }
        return border;
    }

    public static Dimension WindowSize(int width, int height) {
        return new Dimension(width, height);
    }

    public static JFrame getTemplate(Dimension size, int header, int footer, int pWidth, int bHeaderHeight, int bFooterHeight, int pHeaderHeight, int pFooterHeight, PinkStyle style) {
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

        JLabel close = new JLabel(new WindowElement().getImage());
        int padding = (header - close.getIcon().getIconHeight()) / 2;
        int closeWidht = close.getIcon().getIconWidth();
        int closeHeight = close.getIcon().getIconHeight();
        close.setBounds(size.width - closeWidht - padding, padding, closeWidht, closeHeight);

        template.add(close);

        template.add(pink1);

        template.add(pink2);

        template.add(white);

        template.add(blue);

        template.add(black);

        template.setSize(size);

        //login.setBackground(Color.decode("#eaeaea"));
        template.setLayout(null);
        template.setUndecorated(true);
        return template;
    }

    public ImageIcon getImage() {
        return new ImageIcon(getClass().getResource("/Front/surce/x.png"));
    }
}
