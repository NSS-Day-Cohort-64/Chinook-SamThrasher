/* Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist. */

SELECT il.*, t.name, ar.name as ArtistName
FROM invoiceLine il
INNER JOIN track t ON t.trackId = il.trackId
INNER JOIN album al ON al.albumId = t.albumId
INNER JOIN artist ar ON ar.artistId = al.artistId
ORDER BY il.invoiceLineId;
