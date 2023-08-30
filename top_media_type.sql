/* Provide a query that shows the most purchased Media Type. */

SELECT MediaType.Name AS "Media Type", COUNT(*) AS "Number of Purchases"
FROM MediaType
JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY MediaType.Name
ORDER BY COUNT(*) DESC
LIMIT 1;