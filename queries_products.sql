-- Comments in SQL Start with dash-dash --

-- 1. Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false. --
INSERT INTO products(name,price,can_be_returned) VALUES('chair',44.00,false);



-- products_db=# SELECT name,price,can_be_returned FROM products WHERE name ='chair';
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  chair |    44 | f
-- (1 row)

--2 Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true. --

INSERT INTO products(name,price,can_be_returned) VALUES('stool',25.99,'t');


-- products_db=# SELECT name,price,can_be_returned FROM products WHERE name ='stool';
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  stool | 25.99 | t
-- (1 row)

-- 3. Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.

INSERT INTO products(name,price,can_be_returned) VALUES('table',124.00, 'f');


-- products_db=# SELECT name,price,can_be_returned FROM products WHERE name = 'table';
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  table |   124 | f
-- (1 row)
 
 --4. Display all of the rows and columns in the table.

SELECT * FROM products;


--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   1 | chair |    44 | f
--   2 | stool | 25.99 | t
--   3 | table |   124 | f
-- (3 rows)

--5. Display all of the names of the products.
SELECT name FROM products;
--  name  
-- -------
--  chair
--  stool
--  table
-- (3 rows)

-- 6. Display all of the names and prices of the products.
SELECT name,price FROM products;
 
--  name  | price 
-- -------+-------
--  chair |    44
--  stool | 25.99
--  table |   124
-- (3 rows)

--7. Add a new product - make up whatever you would like!
INSERT INTO products (name,price,can_be_returned) VALUES('bench',39.99,'t');

-- products_db=# SELECT name,price,can_be_returned FROM products WHERE name ='bench';
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  bench | 39.99 | t
-- (1 row)

--8. Display only the products that can_be_returned.

SELECT name,price,can_be_returned FROM products WHERE can_be_returned='t';

--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  stool | 25.99 | t
--  bench | 39.99 | t
-- (2 rows)

--9. Display only the products that have a price less than 44.00.
SELECT name,price,can_be_returned FROM products WHERE price < 44;
 
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  stool | 25.99 | t
--  bench | 39.99 | t
-- (2 rows)

--10. Display only the products that have a price in between 22.50 and 99.99.

SELECT name,price,can_be_returned FROM products WHERE price BETWEEN 25.99 AND 99.99;
 
--  name  | price | can_be_returned 
-- -------+-------+-----------------
--  chair |    44 | f
--  stool | 25.99 | t
--  bench | 39.99 | t
-- (3 rows)

--11.There’s a sale going on: Everything is $20 off! Update the database accordingly.
UPDATE products SET price = price -20;

--12. Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price <23;

--13. And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;

--14. There is a new company policy: everything is returnable. Update the database accordingly.
UPDATE products SET can_be_returned = 't';