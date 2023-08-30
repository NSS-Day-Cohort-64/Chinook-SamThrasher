/* Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery. */

SELECT e.firstName, e.lastName, SUM(i.total) AS total 
FROM employee e
INNER JOIn customer c
ON e.employeeID = c.SupportRepId
INNER JOIN invoice i
ON c.customerID = i.customerID
WHERE i.invoiceDate LIKE '2009%'
GROUP BY e.employeeID
ORDER BY total DESC
LIMIT 1;
