/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Color;
import java.awt.Dimension;
import javax.swing.BorderFactory;
import javax.swing.border.Border;

/**
 *
 * @author Alan
 */
public class WindowElement {

    enum WindowColor {
        White, Black, Blue, Pink
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

}
