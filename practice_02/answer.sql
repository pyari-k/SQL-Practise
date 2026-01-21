-- User's solution using CTE to isolate 2023 orders
with orders_2023 as 
(
	select 
		order_id, 
		customer_id, 
		order_date, 
		order_amount, 
		date_part('year',order_date) 
	from orders o 
	where date_part('year',o.order_date) = 2023
), 
joined_orders_2023_and_customers as 
(
	select 
		c.customer_name as customer_name, 
		c.customer_id as customer_id, 
		o.order_id  as order_id 
	from customers c
	left join orders_2023 o 
	on 
	c.customer_id = o.customer_id 
)
select 
distinct(customer_name) from joined_orders_2023_and_customers where order_id is null;