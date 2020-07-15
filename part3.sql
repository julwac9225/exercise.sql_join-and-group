--Write a query which lists order status and the # of orders with that status.
--Column headers should be Order Status and # Orders.
--Sort alphabetically by status.

SELECT o.status AS 'Order Status', ord.quantityOrdered AS '# Orders'
FROM orderdetails as ord 
INNER JOIN orders AS o 
ON ord.orderNumber=o.orderNumber
ORDER BY o.status ASC;