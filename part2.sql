--Determine which products are most popular with our customers.
--For each product, list the total quantity ordered along with the total sale generated (total quantity ordered * priceEach) for that product.
--The column headers should be Product Name, Total # Ordered and Total Sale.
--List the products by Total Sale descending.


SELECT p.productName AS 'Product Name', o.quantityOrdered AS 'Total # Ordered', (o.quantityOrdered * o.priceEach) AS 'Total Sale'
FROM products AS p 
INNER JOIN orderdetails as o 
ON p.productCode=o.productCode
ORDER BY Total Sale DESC;