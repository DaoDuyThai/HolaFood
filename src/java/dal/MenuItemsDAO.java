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
    
    public List<MenuItems> getTop9MenuItems() {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select top 9 * from MenuItems";
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
    
    public List<MenuItems> getNext9MenuItems(int amount) {
        List<MenuItems> list = new ArrayList<>();
        String sql = "select * from MenuItems order by menu_item_id offset ? rows fetch next 9 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, amount);
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
            ps.setString(1, "%" + searchName + "%");
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

    public void deleteMenuItem(String menu_item_id) {
        String sql = "delete from MenuItems where menu_item_id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, menu_item_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertMenuItem(String name, String description, String item_image, int price,
            int category_id, int id) {
        String sql = "INSERT INTO [dbo].[MenuItems]\n"
                + "           ([name]\n"
                + "           ,[description]\n"
                + "           ,[item_image]\n"
                + "           ,[price]\n"
                + "           ,[category_id]\n"
                + "           ,[restaurant_id])\n"
                + "     VALUES\n"
                + "           (?,\n"
                + "		   ?,\n"
                + "		   ?,\n"
                + "		   ?,\n"
                + "		   ?,\n"
                + "		   ?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, item_image);
            ps.setInt(4, price);
            ps.setInt(5, category_id);
            ps.setInt(6, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void updateMenuItem(String name, String description, String item_image, String price,
            String category_id, String id) {
        String sql = "UPDATE [dbo].[MenuItems]\n"
                + "   SET [name] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[item_image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[category_id] = ?\n"
                + "      \n"
                + " WHERE menu_item_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, item_image);
            ps.setString(4, price);
            ps.setString(5, category_id);
            ps.setString(6, id);
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
        a.updateMenuItem("ngon", "aaaaaaaa", "MocLong1.jpg", "12000", "1", "30");
//        List<MenuItems> listByName = a.getMenuItemsByUserID(4);
//        for (MenuItems menuItems : listByName) {
//            System.out.println(menuItems.toString());
//        }
//        MenuItems menuItems = a.getMenuItemsByID("1");
//        System.out.println(menuItems);

    }

}
