/* Which country's customers spent the most?
HINT: Use the MAX function on a subquery. */

SELECT Country, MAX(Total) AS total
FROM (
    SELECT c.Country, SUM(i.Total) AS total
    FROM Customer c
    INNER JOIN Invoice i ON i.CustomerId = c.customerId
    GROUP BY c.CustomerId
    )
GROUP BY Country
ORDER BY total DESC
LIMIT 1;