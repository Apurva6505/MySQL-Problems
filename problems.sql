-- Exercise 1
-- Return all the products
-- name 
-- unit price
-- new price (unit price * 1.1)

-- SELECT name,
-- unit_price,
-- unit_price * 1.1 AS new_price
-- FROM products
-- <------------------------------------------------------------------------------>

-- Exercise 2
-- Get the orders placed this year

-- SELECT *
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- <------------------------------------------------------------------------------->

-- Exercise 3
-- From the order_items table, get the items
-- for the order  #6
-- where the total price is greater than 30

-- SELECT *
-- FROM order_items
-- WHERE order_id = 6 AND unit_price * quantity > 30
-- <------------------------------------------------------------------------------->

-- Exercise 4
-- Return products with
-- quantity in stock equal to 49,38,72

-- SELECT *
-- FROM products
-- WHERE quantity_in_stock IN (49,38,72)
-- <----------------------------------------------------------------------------->

-- Exercise 5
-- Return customers born between 1/1/1990 and 1/1/2000

-- SELECT *
-- FROM customers
-- WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
-- <------------------------------------------------------------------------------->

-- Exercise 6
-- address contain TRAIL or AVENUE

-- SELECT *
-- FROM customers
-- WHERE address LIKE '%trail%' OR 
-- 	  address LIKE '%avenue%'

-- phone numbers end with 9

-- SELECT *
-- FROM customers
-- WHERE phone LIKE '%9'
-- <-------------------------------------------------------------------------------->

-- Exercise 7
-- Get the customers whose-

-- first names are ELKA or AMBUR
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'elka | ambur'

-- last names end with EY or ON
-- WHERE last_name REGEXP 'ey$ | on$'

-- last names start with MY or contains SE
-- WHERE last_name REGEXP '^my|se'

-- last names contain B followed by R or U
-- WHERE last_name REGEXP 'b[ru]'
-- WHERE last_name REGEXP 'br|bu'
-- <---------------------------------------------------------------------------------------------->

-- Exercise 8
-- Get the orders that are not shipped

-- SELECT *
-- FROM orders
-- WHERE shipper_id is NULL 
-- <------------------------------------------------------------------------------------------------->

-- Exercise 9

--  SELECT * , quantity * unit_price AS total_price
--  FROM order_items
--  WHERE order_id = 2
--  ORDER BY total_price DESC
-- <------------------------------------------------------------------------------------------------>
 
 -- Exercise 10
 
 -- Get the top three loyal customers
 
 -- SELECT *
--  FROM customers
--  ORDER BY points DESC
--  LIMIT 3
-- <---------------------------------------------------------------------------------------------------->
-- Exercise 11

-- SELECT order_id, oi.product_id, quantity, oi.unit_price
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id
       
 -- <------------------------------------------------------------------------------------------------------>
 
 -- self joins
 
 -- USE sql_hr;

--  SELECT *
--  FROM employees e
--  JOIN employees m
--      ON e.reports_to = m.employee_id

-- <------------------------------------------------------------------------------------------------------------->

-- Exercise 12
-- In SQL invoicing data base

-- USE sql_invoicing;

-- SELECT 
--     p.date,
--     p.invoice_id,
--     p.amount,
--     c.name,
--     pm.name

-- FROM payments p
-- JOIN clients c
--     ON p.client_id = c.client_id
-- JOIN payment_methods pm
--     ON p.payment_method = pm.payment_method_id
--     
-- <------------------------------------------------------------------------------------------------->

-- Exercise 13

-- SELECT 
--     p.product_id,
--     p.name,
--     oi.product_idemployees
-- FROM products p
-- LEFT JOIN order_items oi
--     ON p.product_id = oi.product_id

-- <---------------------------------------------------------------------------------------->
-- Exercise 14
-- USE sql_invoicing;

-- SELECT 
--     p.date,
--     c.name AS client,
--     p.amount,
--     pm.name AS payment_method
--     
--     
-- FROM payments p
-- JOIN clients c USING (client_id)
-- JOIN payment_methods pm
--     ON p.payment_method = pm.payment_method_id
-- <---------------------------------------------------------------------------->

 -- Exercise 15
 
 -- Do a cross join between shippers and products
 -- using implicit syntax
 -- and then using explicit syntax

 -- SELECT
--      sh.name AS shipper,
--      p.name AS product
--  
--  FROM shippers sh
--  CROSS JOIN products p
--  ORDER BY sh.name
-- <----------------------------------------------------------------------->
-- Exercise 16

-- SELECT  
--     customer_id,
-- 	first_name,points,
--     'Bronze' AS type
-- FROM customers
-- WHERE points>2000 
-- UNION
-- SELECT  
--     customer_id,
-- 	first_name,points,
--     'Silver' AS type
-- FROM customers
-- WHERE points BETWEEN 2000 AND 3000
-- UNION
-- SELECT  
--     customer_id,
-- 	first_name,points,
--     'Gold' AS type
-- FROM customers
-- WHERE points > 3000
-- ORDER BY first_name

-- <-------------------------------------------------------------------->

--  Exercise 17
-- Insert three rows in the products table

-- INSERT INTO products (name,quantity_in_stock,unit_price)
-- VALUES ('Product1' , 10, 1.95),
--         ('Product2' , 11, 1.95),
--         ('Product3' , 12, 1.95)

-- <--------------------------------------------------------------------->

-- Exercise 18
-- USE sql_invoicing;

-- CREATE TABLE invoices_archieved AS
-- SELECT
--      i.invoice_id,
--      i.number,
--      c.name AS client,
--      i.invoice_total,
--      i.payment_total,
--      i.invoice_date,
--      i.payment_date,
--      i.due_date
-- FROM invoices i
-- JOIN clients c
--     USING (client_id)
-- WHERE payment_date IS NOT NULL    

-- <----------------------------------------------------------------------------------->

-- Exercise 19

-- Write a SQL statement to 
-- give any customers born before 1990
-- 50 extra points

-- USE sql_store;

-- UPDATE customers
-- SET points = points + 50
-- WHERE birth_date < '1990-01-01'

-- <------------------------------------------------------------------------------------------------>

-- Exercise 20
-- UPDATE orders
-- SET comments = 'Gold customers'
-- WHERE customer_id IN
--                (SELECT customer_id
-- 				FROM customers
-- 				WHERE points > 3000) 
-- <---------------------------------------------------------------------------------------------->





 
  


















