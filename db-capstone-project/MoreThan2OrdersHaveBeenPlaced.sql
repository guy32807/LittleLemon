SELECT MenuName 
FROM menus
WHERE orders.Quantity = ANY (SELECT * 
FROM orders
WHERE Quantity > 2)