/* Provide a query that shows the total sales per country. */

SELECT c.Country, SUM(i.Total) AS total_sales
FROM Customer c
INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY total_sales DESC;