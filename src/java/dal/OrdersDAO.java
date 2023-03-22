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
import model.MenuItems;
import model.Orders;

/**
 *
 * @author Duy Thai
 */
public class OrdersDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Orders> getAllOrderByUserID(String id) {
        List<Orders> list = new ArrayList<>();
        String sql = "SELECT * from orders o full outer join OrderItems oi on o.order_id = oi.order_id where o.restaurant_id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Orders(rs.getInt(1)
                        , rs.getInt(2)
                        , rs.getInt(3)
                        , rs.getInt(4)
                        , rs.getString(5)
                        , rs.getString(6)
                        , rs.getString(7)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) {
        OrdersDAO o = new OrdersDAO();
        List<Orders> list = o.getAllOrderByUserID("1");
        for (Orders orders : list) {
            System.out.println(orders);
        }
    }

}


