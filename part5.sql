--For each employee who represents customers, output the total # of orders that employee’s customers have placed alongside the total sale amount of those orders.
--The employee name should be output as a single column named Sales Rep formatted as lastName, firstName.
--The second column should be titled # Orders and the third should be Total Sales.
--Sort the output by Total Sales descending.
--Only (and all) employees with the job title Sales Rep should be included in the output, and if the employee made no sales the Total Sales should display as 0.00.

SELECT CONCAT(e.lastName, ', ', e.firstName) AS 'Sales Rep', ord.quantityOrdered AS '# Orders', (ord.quantityOrdered * ord.priceEach) AS 'Total Sales'
COUNT (o.orderNumbers) AS totalOrders, IFNULL((sum(ord.quantityOrdered * ord.priceEach)), 0) AS 'Total Sales'
FROM employees AS e
LEFT JOIN customers AS c 
ON e.employeeNumber=c.salesRepEmployeeNumber
FROM customers AS c 
LEFT JOIN orders AS o 
ON c.customerNumber=o.customerNumber
FROM orders AS o 
LEFT JOIN orderdetails AS ord 
ON o.orderNumber=ord.orderNumber
WHERE e.jobTitle='Sales Rep'
ORDER BY (ord.quantityOrdered * ord.priceEach) DESC
GROUP BY CONCAT(e.lastName, ', ', e.firstName)