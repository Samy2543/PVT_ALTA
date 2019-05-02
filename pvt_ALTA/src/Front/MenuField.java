/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Front;

import java.util.ArrayList;
import javax.swing.JLabel;

/**
 *
 * @author Alan
 */
public class MenuField {

    public JLabel menu;
    public ArrayList<JLabel> fields;
    
    MenuField(String name, String[] nameFields, int x) {
        menu = WindowElement.getMenuElement(name);
        menu.setBounds(x, 0, 200, 50);
        fields = new ArrayList<JLabel>();
        for (int i = 0; i < nameFields.length; i++) {
            JLabel aux = WindowElement.getMenuElement(nameFields[i]);
            aux.setBounds(x, (i + 1) * 50, 200, 50);
            fields.add(aux);
        }
    }
}
