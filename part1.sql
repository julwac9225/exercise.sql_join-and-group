--Write a query to display each customer’s name (asCustomer Name) alongside the name of the employee who is responsible for that customer’s orders.
--The employee name should be in a single Sales Rep column formatted as lastName, firstName. The output should be sorted alphabetically by customer name.

SELECT p.productName AS 'Product Name', o.quantityOrdered AS 'Total # Ordered', (o.quantityOrdered * o.priceEach) AS 'Total Sale'
FROM products AS p 
INNER JOIN orderdetails as o 
ON p.productCode=o.productCode
ORDER BY (o.quantityOrdered * o.priceEach) DESC;