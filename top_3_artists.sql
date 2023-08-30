/* Provide a query that shows the top 3 best selling artists. */

SELECT a.name, COUNT(il.TrackId) AS total_sold
FROM invoice i
INNER JOIN invoiceLine il ON il.InvoiceId = i.InvoiceId
INNER JOIN track t ON t.TrackId = il.TrackId
INNER JOIN album al ON al.AlbumId = t.AlbumId
INNER JOIN artist a ON a.ArtistId = al.ArtistId
GROUP BY a.name
ORDER BY total_sold DESC
LIMIT 3;