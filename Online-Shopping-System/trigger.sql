--  Trigger to Auto Update Stock

DELIMITER //

CREATE TRIGGER ReduceStockAfterOrder
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
  UPDATE Product
  SET Stock_Quantity = Stock_Quantity - NEW.Quantity
  WHERE Product_ID = NEW.Product_ID;
END;
//

DELIMITER ;