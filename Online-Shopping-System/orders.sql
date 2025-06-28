-- Sample Order and OrderDetails

INSERT INTO `Order` (Order_ID, Customer_ID, Order_Date, Total_Amount) VALUES
(1001, 101, '2025-03-15', 52000);

INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Subtotal) VALUES
(5001, 1001, 1, 1, 50000),
(5002, 1001, 3, 1, 2000);