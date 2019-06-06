
DROP TABLE practice_delete;
DROP TABLE playlist_track;
DROP TABLE playlist;
DROP TABLE invoice_line;
DROP TABLE invoice;
DROP TABLE customer;
-- after that, then --
DROP TABLE employee;
-- after that, then --
DROP TABLE track;
-- after that, then --
DROP TABLE media_type;
DROP TABLE genre;
-- after that, then --
DROP TABLE album;
DROP TABLE artist;

-- Let's simulate an e-commerce site. We're going to need users, products, and orders.
-- users need a name and an email.
-- products need a name and a price
-- orders need a ref to product.
-- All 3 need primary keys.




-- Instructions
-- Create 3 tables following the criteria in the summary.
    --users
CREATE TABLE users(
  users_id SERIAL PRIMARY KEY,
  user_name VARCHAR(200),
  user_email VARCHAR(200)
);

    -- products
CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  price decimal(12,2)
);
ALTER TABLE products
	RENAME COLUMN name TO product_name;
ALTER TABLE products
	RENAME COLUMN price TO product_price;
ALTER TABLE products
	ADD COLUMN 
  users_id INTEGER REFERENCES users(users_id);


    -- orders
CREATE TABLE orders(
  orders_id SERIAL PRIMARY KEY,
	product_id INTEGER REFERENCES products(product_id),
  shipped BOOLEAN
);
ALTER TABLE orders
	ADD COLUMN quantity INTEGER;
ALTER TABLE orders
	ADD COLUMN 
    users_id INTEGER REFERENCES users(users_id);    

-- Add some data to fill up each table.
-- At least 3 users, 3 products, 3 orders.

    --users
INSERT INTO users (user_name, user_email)
	VALUES ('Mark Nagel', 'mark_nagel@hotmail.com'),
		   ('Sam Superman', 'sam@metropcs.com'),
           ('Freddy Friday', 'fred@tgif.com');
SELECT * FROM users;    

    --products
INSERT INTO products (users_id, product_name, product_price)
	VALUES ('3', 'Brownies', '20'),
		   ('2', 'Tacos', '4'),
           ('2', 'Ice Cream', '3');
SELECT * FROM products;

ALTER TABLE products
	DROP COLUMN users_id;   


    --orders
INSERT INTO orders (product_id, shipped, users_id, quantity)
	VALUES (1, true, 3, 20),
		   (3, false, 2, 3),
           (1, true, 2, 1);
SELECT * FROM orders;


-- Run queries against your data.

SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM users;

-- Get all products for the first order.

SELECT * FROM products p
	JOIN orders o ON o.product_id = p.product_id
    WHERE o.orders_id = 1;

-- Get all orders.

SELECT * FROM orders;

-- Get the total cost of an order ( sum the price of all products on an order ).

SELECT SUM(p.product_price*o.quantity) FROM products p
	JOIN orders o ON o.product_id = p.product_id
    WHERE o.orders_id = 1;

-- Add a foreign key reference from orders to users.

     --done above

-- Update the orders table to link a user to each order.

     --done above
      
-- Run queries against your data.

     --done above

-- Get all orders for a user.

SELECT * FROM orders o
	JOIN users u ON u.users_id = o.users_id
    WHERE u.users_id = 2;

-- Get how many orders each user has.

SELECT u.user_name, COUNT(o.orders_id) FROM orders o
	JOIN users u ON u.users_id = o.users_id
    GROUP BY u.user_name

-- Black Diamond
-- Get the total amount on all orders for each user.


