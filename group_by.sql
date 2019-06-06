-- Problem 1:
-- Find a count of how many tracks there are per genre. Display the genre name with the count.

SELECT COUNT (*) , g.name FROM track t
	JOIN genre g ON t.genre_id = g.genre_id
	GROUP BY g.name;

-- Problem 2:
-- Find a count of how many tracks are the "Pop" genre and how many tracks are the "Rock" genre.

SELECT COUNT (*), g.name FROM track t
	JOIN genre g ON t.genre_id = g.genre_id
    WHERE g.name = 'Pop' OR g.name = 'Rock'
	GROUP BY g.name;

-- Problem 3:
-- Find a list of all artists and how many albums they have.

SELECT art.name, COUNT (alb.album_id) FROM artist art
	JOIN album alb ON alb.artist_id = art.artist_id
	GROUP BY art.name;


