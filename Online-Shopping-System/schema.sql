--  Create Tables

CREATE DATABASE Online_Shopping_System;
USE Online_Shopping_System;
CREATE TABLE Product (
  Product_ID INT PRIMARY KEY,
  Product_Name VARCHAR(100),
  Price DECIMAL(10, 2),
  Stock_Quantity INT
);

CREATE TABLE Customer (
  Customer_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Contact VARCHAR(15)
);

CREATE TABLE `Order` (
  Order_ID INT PRIMARY KEY,
  Customer_ID INT,
  Order_Date DATE,
  Total_Amount DECIMAL(10, 2),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE OrderDetails (
  OrderDetail_ID INT PRIMARY KEY,
  Order_ID INT,
  Product_ID INT,
  Quantity INT,
  Subtotal DECIMAL(10, 2),
  FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);