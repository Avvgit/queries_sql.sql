CREATE TABLE products (
  id serial PRIMARY KEY,
  brand varchar (100) NOT NULL,
  model varchar (100) NOT NULL, 
  price decimal NOT NULL,
  stock NUMERIC (4) NOT NULL,
  created_on timestamp 
);

INSERT INTO products (brand, model, price, stock, created_on) VALUES 
('Apple', 'Macbook Air', 1000, 20, now()), 
('Apple', 'Macbook Pro', 1200, 15, now()), 
('Asus', 'ROG Strix', 1500, 10, now()),
('Asus', 'Tuf Draf f15', 900, 15, now()), 
('HP', 'Omen', 750, 20, now());

SELECT count (id) FROM products; 
SELECT max (price) FROM products;
SELECT min (price) FROM products;
SELECT avg (price) FROM products;
SELECT sum (stock) FROM products;
SELECT sum (stock) FROM products WHERE brand = 'Asus';
SELECT avg (price) FROM products WHERE brand = 'Apple';
SELECT brand, sum (stock) FROM products GROUP BY brand;
SELECT brand, avg (price) FROM products GROUP BY brand;
SELECT brand, min (price) FROM products GROUP BY brand;
SELECT (model,price) FROM products ORDER BY brand DESC;
SELECT price AS model FROM products GROUP BY price;


SELECT * FROM products;
SELECT price FROM products WHERE brand = 'Asus' 

