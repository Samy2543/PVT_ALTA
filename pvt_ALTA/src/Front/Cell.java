/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Color;
import java.awt.Dimension;
import javax.swing.JLabel;

/**
 *
 * @author Alan
 */
public class Cell {

    private Dimension size;
    private Dimension coord;
    private JLabel cell;
    private BorderRadius border;
    private Color background;

    public Cell(Dimension size, Dimension coord, BorderRadius border, Color background) {
        this.size = size;
        this.coord = coord;
        this.cell = new JLabel();
        this.border = border;
        this.background = background;
        this.prepareCell();
    }
    
    public Cell(Dimension size, Dimension coord, Cell template) {
        this.size = size;
        this.coord = coord;
        this.cell = new JLabel();
        this.border = template.getBorder();
        this.background = template.getBackground();
        this.prepareCell();
    }
    
    public Cell(){
        this.size = new Dimension();
        this.coord = new Dimension();
        this.cell = new JLabel();
        this.border = new BorderRadius(WindowElement.Black, 1, 1, 0);
        this.background = WindowElement.White;
    }

    private void prepareCell() {
        this.cell.setBounds(coord.width, coord.height, size.width, size.height);
        this.cell.setBackground(background);
        this.cell.setBorder(border);
        this.cell.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                cell.setBorder(new BorderRadius(WindowElement.Blue, 1, 3, 0));
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                cell.setBorder(new BorderRadius(WindowElement.Black, 1, 1, 0));
            }
        });
        
    }

    public Dimension getSize() {
        return size;
    }

    public void setSize(Dimension size) {
        this.size = size;
    }

    public Dimension getCoord() {
        return coord;
    }

    public void setCoord(Dimension coord) {
        this.coord = coord;
    }

    public JLabel getCell() {
        return cell;
    }

    public void setCell(JLabel cell) {
        this.cell = cell;
    }

    public BorderRadius getBorder() {
        return border;
    }

    public void setBorder(BorderRadius border) {
        this.border = border;
    }

    public Color getBackground() {
        return background;
    }

    public void setBackground(Color background) {
        this.background = background;
    }
    
    public void setCellText(String text)
    {
        this.cell.setText(text);
    }
}
