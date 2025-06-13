USE pizza_sales;
SHOW tables;

SELECT * FROM order_details;
SELECT * FROM orders;
SELECT * FROM pizza_types;
SELECT * FROM pizzas;

ALTER TABLE orders
MODIFY COLUMN date DATE;

--Retrieve the total number of orders placed.
select count(order_id) from orders;

--Calculate the total revenue generated from pizza sales.
SELECT sum(order_details.quantity * pizzas.price) 
FROM order_details
JOIN pizzas
ON order_details.pizza_id=pizzas.pizza_id;



