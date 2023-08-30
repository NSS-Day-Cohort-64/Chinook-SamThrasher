/* Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre */

SELECT Album.Title AS Album, MediaType.Name AS MediaType, Genre.Name AS Genre
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId