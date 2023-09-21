SELECT c.CustomerID, c.FirstName, c.LastName, o.OrderID, m.MenuName, i.CourseName
FROM customer c 
INNER JOIN orders o
ON c.CustomerID = o.CustomerID
INNER JOIN menus m
ON o.MenuID = m.MenuID
INNER JOIN menuitems i
ON m.ItemID = i.MenuItemsID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost

