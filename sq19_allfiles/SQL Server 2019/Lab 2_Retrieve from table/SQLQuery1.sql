USE MyGuitarShop;

SELECT 'SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NOT NULL
UNION
SELECT 'NOT SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NULL
ORDER BY OrderDate;