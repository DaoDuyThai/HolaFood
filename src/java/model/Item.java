/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Duy Thai
 */
public class Item {
    private int menu_item_id;
    private String name;
    private String item_image;
    private double price;
    private int quantity;

    public Item() {
    }

    public Item(int menu_item_id, String name, String item_image, double price, int quantity) {
        this.menu_item_id = menu_item_id;
        this.name = name;
        this.item_image = item_image;
        this.price = price;
        this.quantity = quantity;
    }

    public int getMenu_item_id() {
        return menu_item_id;
    }

    public void setMenu_item_id(int menu_item_id) {
        this.menu_item_id = menu_item_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getItem_image() {
        return item_image;
    }

    public void setItem_image(String item_image) {
        this.item_image = item_image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Item{" + "menu_item_id=" + menu_item_id + ", name=" + name + ", item_image=" + item_image + ", price=" + price + ", quantity=" + quantity + '}';
    }
    
    
}
