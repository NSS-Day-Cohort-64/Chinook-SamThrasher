/* Provide a query that shows the most purchased track(s) of 2013. */

SELECT t.Name, COUNT(il.TrackId) AS Purchases
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.Name
ORDER BY Purchases DESC
LIMIT 5;