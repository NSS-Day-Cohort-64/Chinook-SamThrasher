/* Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery. */

SELECT SUM(total) AS total_sales, employee.FirstName, employee.LastName
FROM invoice
JOIN customer ON invoice.CustomerId = customer.CustomerId
JOIN employee ON customer.SupportRepId = employee.EmployeeId
GROUP BY employee.EmployeeId
ORDER BY total_sales DESC
LIMIT 1;
