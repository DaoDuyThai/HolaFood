
-- Create the HolaFood database
CREATE DATABASE HolaFood;
GO
-- Switch to the HolaFood database
USE HolaFood;

-- Create the Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username NVARCHAR(50) NOT NULL,
    password NVARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
    email NVARCHAR(50) NOT NULL,
    phone_number NVARCHAR(20) NOT NULL,
    address NVARCHAR(100) NOT NULL    
);

-- Create the Restaurants table
CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    description NVARCHAR(500) NOT NULL,
    restaurant_image NVARCHAR(MAX),
    address NVARCHAR(100) NOT NULL,
    phone_number NVARCHAR(20) NOT NULL,
    owner_id INT NOT NULL REFERENCES Users(user_id),
    
);

-- Create the Menu Categories table
CREATE TABLE MenuCategories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    
);

-- Create the Menu Items table
CREATE TABLE MenuItems (
    menu_item_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    description NVARCHAR(500) NOT NULL,
    item_image NVARCHAR(MAX),
    price DECIMAL(8,2) NOT NULL,
    category_id INT NOT NULL REFERENCES MenuCategories(category_id),
    restaurant_id INT NOT NULL REFERENCES Restaurants(restaurant_id),
    
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NOT NULL REFERENCES Users(user_id),
    restaurant_id INT NOT NULL REFERENCES Restaurants(restaurant_id),
    total_price DECIMAL(8,2) NOT NULL,
    status NVARCHAR(20) NOT NULL,
    delivery_address NVARCHAR(100) NOT NULL,
    delivery_time DATETIME NOT NULL,
);

-- Create the Order Items table
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT NOT NULL REFERENCES Orders(order_id),
    menu_item_id INT NOT NULL REFERENCES MenuItems(menu_item_id),
    quantity INT NOT NULL,
    price DECIMAL(8,2) NOT NULL,
);

