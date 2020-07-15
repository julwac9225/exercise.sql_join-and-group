--Write a query to list, for each product line, the total # of products sold from that product line.
--The first column should be Product Line and the second should be # Sold.
--Order by the second column descending.
-- COUNT
SELECT DISTINCT p.productLine AS 'Product Line', o.quantityOrdered AS '# Sold'
FROM products AS p 
INNER JOIN orderdetails AS o 
ON p.productCode=o.productCode
ORDER BY o.quantityOrdered DESC;