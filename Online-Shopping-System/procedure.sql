-- Place the Order
DELIMITER //

CREATE PROCEDURE PlaceOrder (
  IN p_order_id INT,
  IN p_customer_id INT,
  IN p_order_date DATE,
  IN p_product_id INT,
  IN p_quantity INT
)
BEGIN
  DECLARE available_stock INT DEFAULT 0;
  DECLARE unit_price DECIMAL(10,2) DEFAULT 0;
  DECLARE subtotal DECIMAL(10,2) DEFAULT 0;

  -- Get stock and price
  SELECT Stock_Quantity, Price INTO available_stock, unit_price
  FROM Product
  WHERE Product_ID = p_product_id;

  -- Check stock
  IF p_quantity > available_stock THEN
    SELECT CONCAT(' Error: Insufficient stock! Only ', available_stock, ' units available.') AS ErrorMessage;
  ELSE
    SET subtotal = unit_price * p_quantity;

    INSERT INTO `Order` (Order_ID, Customer_ID, Order_Date, Total_Amount)
    VALUES (p_order_id, p_customer_id, p_order_date, subtotal);

    INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Subtotal)
    VALUES (p_order_id + 4000, p_order_id, p_product_id, p_quantity, subtotal);
  END IF;
END;
//

DELIMITER ;