/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Duy Thai
 */
public class Restaurants {
    private int restaurant_id;
    private String name;
    private String description;
    private String restaurant_image;
    private String address;
    private String phone_number;
    private int owner_id;

    public Restaurants() {
    }

    public Restaurants(int restaurant_id, String name, String description, String restaurant_image, String address, String phone_number, int owner_id) {
        this.restaurant_id = restaurant_id;
        this.name = name;
        this.description = description;
        this.restaurant_image = restaurant_image;
        this.address = address;
        this.phone_number = phone_number;
        this.owner_id = owner_id;
    }

    public int getRestaurant_id() {
        return restaurant_id;
    }

    public void setRestaurant_id(int restaurant_id) {
        this.restaurant_id = restaurant_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRestaurant_image() {
        return restaurant_image;
    }

    public void setRestaurant_image(String restaurant_image) {
        this.restaurant_image = restaurant_image;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getOwner_id() {
        return owner_id;
    }

    public void setOwner_id(int owner_id) {
        this.owner_id = owner_id;
    }

    @Override
    public String toString() {
        return "Restaurants{" + "restaurant_id=" + restaurant_id + ", name=" + name + ", description=" + description + ", restaurant_image=" + restaurant_image + ", address=" + address + ", phone_number=" + phone_number + ", owner_id=" + owner_id + '}';
    }
    
    
    
}
