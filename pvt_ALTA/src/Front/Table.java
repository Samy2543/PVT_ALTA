/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Dimension;
import java.util.ArrayList;
import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 *
 * @author Alan
 */
public class Table {
    public ArrayList<RowTable> table;
    public int rows;
    public int colums;
    public Dimension size;
    public JPanel graphicTable;
    public Cell cellTemplate;

    public Table(int rows, int colums, Dimension size, Cell cellTemplate) {
        this.rows = rows;
        this.colums = colums;
        this.cellTemplate = cellTemplate;
        Dimension rowSize = new Dimension(size.width, (int)(size.height/rows));
        table = new ArrayList<RowTable>();
        for (int i = 0; i < rows; i++)
        {
            //int rowIndex, int columns, Dimension rowSize, Dimension coord, Cell template
            table.add(new RowTable(i, colums, rowSize, new Dimension(rowSize.width, rowSize.height * i), cellTemplate ));
        }
        
        this.graphicTable = new JPanel();
        prepareTablePanel();
        JFrame table = WindowElement.getTemplate(
                new Dimension(490, 665),
                80, 0, 210, 10, 0, 30, 0,
                WindowElement.PinkStyle.Right_Left,
                null,
                this.graphicTable
        );
        table.setLocationRelativeTo(null);
        table.setVisible(true);
        
    }
    
    public void prepareTablePanel(){
        this.graphicTable.setLayout(null);
        for(int i = 0; i < table.size(); i ++){
            for(int j = 0; j < table.get(i).row.size(); j++)
            {
                Cell cell = table.get(i).row.get(j);
                this.graphicTable.add(cell.getCell());
            }
        } 
    }
    
    public static void main (String args[])
    {
        Table table = new Table(10,5, new Dimension(300,300), new Cell());
    }
}
