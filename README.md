# 🛍 Online Shopping System (MySQL Project)

## 📌 Overview
This project simulates a basic e-commerce backend system using MySQL. It handles product inventory, customer orders and automatic stock updates using triggers and procedures.

## 🎯 Features
- Manage products, customers and orders
- Place orders with automatic subtotal and total calculations
- Validate stock availability during ordering
- Auto-update stock quantities using triggers
- Retrieve sales and inventory reports through SQL queries

## 🧩 Tables Created
- `Product`: Stores product ID, name, category, price and stock quantity
- `Customer`: Contains customer information like name, contact and address
- `Order`: Tracks order ID, customer, date and total amount
- `OrderDetails`: Stores line items per order with quantity and subtotal

## ⚙️ Trigger Used
- `ReduceStockAfterOrder`: Automatically updates the stock when an order is placed

## 🛠 Stored Procedure
- `PlaceOrder`: Validates product availability and inserts order details if stock is sufficient; otherwise returns a custom error message

## 📊 Sample Reports
- Product stock levels before and after orders
- All customer details
- Order summary table
- Detailed order item breakdown
