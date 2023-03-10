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
import model.Restaurants;

/**
 *
 * @author Duy Thai
 */
public class RestaurantsDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Restaurants> getAllRestaurants(){
        List<Restaurants> list = new ArrayList<>();
        String sql = "select * from Restaurants";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Restaurants(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7)));
            
            }
        } catch (Exception e) {
            System.out.println(e);
        } 
        return list;
    }
    
    public static void main(String[] args) {
        RestaurantsDAO a = new RestaurantsDAO();
        List<Restaurants> list = a.getAllRestaurants();
        for (Restaurants restaurants : list) {
            System.out.println(restaurants);
        }
    }
}
