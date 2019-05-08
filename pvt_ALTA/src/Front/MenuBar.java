/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.util.ArrayList;

/**
 *
 * @author Alan
 */
public class MenuBar {

    public int selectedMenuField;
    public ArrayList<MenuField> menuBar;

    MenuBar() {
        this.selectedMenuField = -1;
        this.menuBar = new ArrayList<MenuField>();
    }

    public void addMenuField(String name, String[] nameFields, int index) {
        this.menuBar.add(new MenuField(name, nameFields, this.menuBar.size() * 200));
        MenuField menu = this.menuBar.get(this.menuBar.size() - 1);//.menu
        menu.menu.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                if (someoneTyped()) {
                    setSelectedMenuField(index);
                    menuBar.get(selectedMenuField).SubMenu();
                }
            }

            public void mouseExited(java.awt.event.MouseEvent evt) {
                setSelectedMenuField(-1);
            }
        });
    }

    public void setSelectedMenuField(int index) {
        this.selectedMenuField = index;
    }

    public int getSelectedMenuField() {
        return this.selectedMenuField;
    }

    public Boolean someoneTyped() {
        for (int i = 0; i < this.menuBar.size(); i++) {
            if (this.menuBar.get(i).IsTyped()) {
                this.menuBar.get(i).SubMenu();
                return true;
            }
        }
        return false;
    }

    
}
