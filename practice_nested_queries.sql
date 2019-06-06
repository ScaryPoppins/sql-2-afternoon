-- Problem 1:
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * FROM invoice i
	WHERE invoice_id IN (SELECT invoice_id FROM invoice_line where unit_price > 0.99);

-- Problem 2:
-- Get all playlist tracks where the playlist name is Music.

SELECT * from playlist_track pt
	WHERE pt.playlist_id IN (SELECT p.playlist_id FROM playlist p WHERE name = 'Music')

-- Problem 3:
-- Get all track names for playlist_id 5.

SELECT t.name from track t
	WHERE t.track_id IN (SELECT pt.track_id FROM playlist_track pt WHERE pt.playlist_track_id = 5)

-- Problem 4:
-- Get all tracks where the genre is Comedy.

SELECT * from track t
	WHERE t.genre_id IN (SELECT g.genre_id FROM genre g WHERE name = 'Comedy')

-- Problem 5:
-- Get all tracks where the album is Fireball.

SELECT * from track t
	WHERE t.album_id IN (SELECT alb.album_id FROM album alb WHERE title = 'Fireball')

-- Problem 6:
-- Get all tracks for the artist Queen ( 2 nested subqueries ).

SELECT * from track t
	WHERE t.album_id IN (SELECT alb.album_id FROM album alb 
    WHERE alb.artist_id IN (SELECT art.artist_ID FROM artist art 
    WHERE art.name = 'Queen'))
