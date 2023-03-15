/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Duy Thai
 */
public class Users {
    private int user_id;
    private String userName;
    private String password;
    private String name;
    private String email;
    private String phone_number;
    private String address;

    public Users() {
    }

    public Users(int user_id, String userName, String password, String name, String email, String phone_number, String address) {
        this.user_id = user_id;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Users{" + "user_id=" + user_id + ", userName=" + userName + ", password=" + password + ", name=" + name + ", email=" + email + ", phone_number=" + phone_number + ", address=" + address + '}';
    }
    
    
    
}
