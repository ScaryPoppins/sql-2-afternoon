-- Problem 1:
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * FROM invoice i
	JOIN invoice_line il ON i.invoice_id = il.invoice_id
	WHERE il.unit_price > 0.99;

-- Problem 2:
-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT i.invoice_date, c.first_name, c.last_name, i.total  FROM invoice i
	JOIN customer c ON i.customer_id = c.customer_id

-- Problem 3:
-- Get the customer first_name and last_name and the support rep's first_name and last_name from all customers.
-- Support reps are on the employee table.

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
	JOIN employee e ON e.employee_id = c.support_rep_id

-- Problem 4: 
-- Get the album title and the artist name from all albums.

SELECT alb.title, art.name FROM album alb
	JOIN artist art ON alb.artist_id = art.artist_id

-- Problem 5:  
-- Get all playlist_track track_ids where the playlist name is Music.

SELECT playlist_track_id FROM playlist_track pt
	JOIN playlist p ON pt.playlist_id = p.playlist_id
	WHERE p.name = 'Music';

-- Problem 6:
-- Get all track names for playlist_id 5.

SELECT t.name FROM track t
	JOIN playlist_track pt ON pt.track_id = t.track_id
	WHERE pt.playlist_id = 5;

-- Problem 7:
-- Get all track names and the playlist name that they're on ( 2 joins ).

SELECT t.name, p.name FROM track t
	JOIN playlist_track pt ON pt.track_id = t.track_id
    JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- Problem 8:
-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).

SELECT t.name, a.title FROM track t
	JOIN album a ON t.album_id = a.album_id
    JOIN genre g ON t.genre_id = g.genre_id
    WHERE g.name = 'Alternative & Punk';

-- Black Diamond
-- Get all tracks on the playlist(s) called Music and show their name, genre name, album name, and artist name.
-- At least 5 joins.

