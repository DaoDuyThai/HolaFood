/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.MenuItems;

/**
 *
 * @author Duy Thai
 */
public class MenuItemsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<MenuItems> getAllMenuItems() {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select * from MenuItems";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MenuItems(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<MenuItems> getMenuItemsByName(String searchName) {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select * from MenuItems where name like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+searchName+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MenuItems(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    
    
    public List<MenuItems> getMenuItemsByCategoryID(String category_id) {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select * from MenuItems where category_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, category_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MenuItems(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    
    
    
    
    public MenuItems getMenuItemsByID(String menu_item_id) {
        
        String sql = "select * from MenuItems where menu_item_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, menu_item_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new MenuItems(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public List<MenuItems> getMenuItemsByUserID(int user_id) {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select * from MenuItems m join Restaurants r on m.restaurant_id = r.restaurant_id join users u on r.owner_id = u.user_id where u.user_id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, user_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MenuItems(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void deleteMenuItem(String menu_item_id){
        String sql = "delete from MenuItems where menu_item_id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, menu_item_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        MenuItemsDAO a = new MenuItemsDAO();
//        List<MenuItems> list = a.getAllMenuItems();
//        for (MenuItems menuItems : list) {
//            System.out.println(menuItems);
//        }

        List<MenuItems> listByName = a.getMenuItemsByUserID(4);
        for (MenuItems menuItems : listByName) {
            System.out.println(menuItems.toString());
        }
//        MenuItems menuItems = a.getMenuItemsByID("1");
//        System.out.println(menuItems);
        
    }
    

}
