/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Duy Thai
 */
public class Favourite {
    private int user_id;
    private int restaurant_id;
    private int menu_item_id;

    public Favourite() {
    }

    public Favourite(int user_id, int restaurant_id, int menu_item_id) {
        this.user_id = user_id;
        this.restaurant_id = restaurant_id;
        this.menu_item_id = menu_item_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRestaurant_id() {
        return restaurant_id;
    }

    public void setRestaurant_id(int restaurant_id) {
        this.restaurant_id = restaurant_id;
    }

    public int getMenu_item_id() {
        return menu_item_id;
    }

    public void setMenu_item_id(int menu_item_id) {
        this.menu_item_id = menu_item_id;
    }
    
    
}
