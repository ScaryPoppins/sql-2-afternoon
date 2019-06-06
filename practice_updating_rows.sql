-- Problem 1:
-- Find all customers with fax numbers and set those numbers to null.

UPDATE customer 
    SET fax = null
    WHERE fax IS NOT null;
SELECT * FROM customer;

-- Problem 2:
-- Find all customers with no company (null) and set their company to "Self".

UPDATE customer 
	SET company = 'Self'
    WHERE company IS null;
SELECT * FROM customer;

-- Problem 3:
-- Find the customer Julia Barnett and change her last name to Thompson.

UPDATE customer 
	SET last_name = 'Thompson'
    WHERE first_name = 'Julia' AND last_name = 'Barnett';
SELECT * FROM customer;

-- Problem 4:
-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.

UPDATE customer 
	SET support_rep_id = '4'
  WHERE email = 'luisrojas@yahoo.cl';
SELECT * FROM customer;

-- Problem 5:
-- Find all tracks that are the genre Metal and have no composer. Set the composer to "The darkness around us".

UPDATE track t
	SET composer = 'The darkness around us'
  WHERE t.genre_id = (SELECT g.genre_id FROM genre g WHERE g.name = 'Metal')
  AND t.composer IS null;
  
SELECT * FROM track;

-- Problem 6:
-- Refresh your page to remove all database changes.

SELECT Ctrl, F5 FROM browser
    WHERE browser = 'open';


