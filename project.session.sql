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

--Identify the highest-priced pizza.
select pizzas.pizza_type_id,pizza_types.name,pizzas.price
FROM pizza_types
join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by price DESC
limit 1;

--Identify the most common pizza size ordered.
SELECT size from pizzas 
group by size
ORDER BY count(size) DESC
limit 1;






