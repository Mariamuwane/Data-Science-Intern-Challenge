
/* How many orders were shipped by Speedy Express in total? */
SELECT COUNT(*) AS NumberOfOrders
FROM [Orders]
JOIN [Shippers]
    ON [Shippers].ShipperID = [Orders].ShipperID
WHERE [Shippers].ShipperName = 'Speedy Express'

/* Number of Records: 1 
 NumberOfOrders
 54 
 The orders and Shippers tables were joined, the shipper ID for the specified name was used to trace its number of orders. */

/* What is the last name of the employee with the most orders?	*/
SELECT [Employees].LastName
FROM [Employees]
LEFT JOIN [Orders]
ON [Orders].EmployeeID = [Employees].EmployeeID
GROUP BY [Orders].EmployeeID
ORDER BY COUNT(Orders.EmployeeID) DESC
LIMIT 1;

/*	Peacock was the employee with the most orders. 
The employees last name was gotten from employee and joined with their orders.
Using their IDs, the number of orders were arranging in descending order. The order with the highest was at the top.	*/

/* What product was ordered the most by customers in Germany? */

SELECT [Products].ProductName, SUM(OrderDetails.Quantity) AS Total_orders, Customers.Country
FROM [Products]
JOIN [OrderDetails] ON [OrderDetails].ProductID = [Products].ProductID
JOIN [Orders] ON [Orders].OrderID = [OrderDetails].OrderID
JOIN [Customers] ON [Customers].CustomerID = [Orders].CustomerID
WHERE [Customers].Country = "Germany"
GROUP BY [Products].ProductName
ORDER BY Total_orders DESC
LIMIT 1;

/* Boston crab meat with 160 0rders was the most ordered product in Germany.
The orders details was joined with the product ID,then joined with the customer ID.
With this the customers were traced, and it was specified to note only customers who country was Gernmany.
The products were grouped by their by their number of orders in descending order.
Boston Crab Meat appeared at the top.	*/