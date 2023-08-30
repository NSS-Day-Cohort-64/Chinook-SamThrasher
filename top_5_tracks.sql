/* Provide a query that shows the top 5 most purchased tracks over all. */

SELECT t.name AS Track , COUNT(il.trackId) AS Purchases
FROM invoiceLine AS il
JOIN track AS t ON t.trackId = il.trackId
GROUP BY il.trackId
ORDER BY Purchases DESC
LIMIT 5;