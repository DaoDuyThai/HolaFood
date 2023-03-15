/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.MenuCategories;
import model.MenuItems;

/**
 *
 * @author Duy Thai
 */
public class MenuCategoriesDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<MenuCategories> getAllMenuCategories() {
        List<MenuCategories> list = new ArrayList<>();
        String sql = "select * from MenuCategories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MenuCategories(rs.getInt(1), rs.getString(2)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    
    

    public static void main(String[] args) {
        MenuCategoriesDAO mc = new MenuCategoriesDAO();
        List<MenuCategories> m = mc.getAllMenuCategories();
        for (MenuCategories menuCategories : m) {
            System.out.println(menuCategories.toString());
        }
    }
}
