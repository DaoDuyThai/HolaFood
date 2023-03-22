/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Duy Thai
 */
public class Orders {
    private int order_id;
    private int customer_id;
    private int restaurant_id;
    private double total_price;
    private String status;
    private String delivery_address;
    private String delivery_time;

    public Orders(int order_id, int customer_id, int restaurant_id, double total_price, String status, String delivery_address, String delivery_time) {
        this.order_id = order_id;
        this.customer_id = customer_id;
        this.restaurant_id = restaurant_id;
        this.total_price = total_price;
        this.status = status;
        this.delivery_address = delivery_address;
        this.delivery_time = delivery_time;
    }

    public Orders() {
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getRestaurant_id() {
        return restaurant_id;
    }

    public void setRestaurant_id(int restaurant_id) {
        this.restaurant_id = restaurant_id;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDelivery_address() {
        return delivery_address;
    }

    public void setDelivery_address(String delivery_address) {
        this.delivery_address = delivery_address;
    }

    public String getDelivery_time() {
        return delivery_time;
    }

    public void setDelivery_time(String delivery_time) {
        this.delivery_time = delivery_time;
    }

    @Override
    public String toString() {
        return "Orders{" + "order_id=" + order_id + ", customer_id=" + customer_id + ", restaurant_id=" + restaurant_id + ", total_price=" + total_price + ", status=" + status + ", delivery_address=" + delivery_address + ", delivery_time=" + delivery_time + '}';
    }
    
    
    
}
