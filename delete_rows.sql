-- USE the following DUMMY TABLE:
-- CREATE TABLE practice_delete ( name TEXT, type TEXT, value INTEGER );
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);

-- SELECT * FROM practice_delete;

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------



-- Problem 1:
-- Copy, paste, and run the SQL code from the summary.

SELECT * FROM completed;

-- Problem 2:
-- Delete all 'bronze' entries from the table.

DELETE FROM practice_delete 
	WHERE type = 'bronze';
SELECT * FROM practice_delete;

-- Problem 3:
-- Delete all 'silver' entries from the table.

DELETE FROM practice_delete 
	WHERE type = 'silver';
SELECT * FROM practice_delete;

-- Problem 4:
-- Delete all entries whose value is equal to 150.

DELETE FROM practice_delete 
	WHERE value = 150;
SELECT * FROM practice_delete;

