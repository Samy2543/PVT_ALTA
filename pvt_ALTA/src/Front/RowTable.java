/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.awt.Dimension;
import java.util.ArrayList;

/**
 *
 * @author Alan
 */
public class RowTable {

    public ArrayList<Cell> row;
    private int rowIndex;
    private int columns;
    private Dimension rowSize;

    public RowTable(int rowIndex, int columns, Dimension rowSize, Dimension coord, Cell template) {
        this.rowIndex = rowIndex;
        this.columns = columns;
        this.rowSize = rowSize;
        this.row = new ArrayList<Cell>();
        Dimension size = new Dimension((int) (rowSize.width / columns), rowSize.height);
        for (int i = 0; i < this.columns; i++) {
            this.row.add(new Cell(size, new Dimension(size.width * i, coord.height), template));
        }
    }

    public <T> ArrayList<T> getRowData() {
        ArrayList<T> data = new ArrayList<T>();
        for (int i = 0; i < row.size(); i++) {
            data.add((T)row.get(i));
        }
        return data;
    }

}
