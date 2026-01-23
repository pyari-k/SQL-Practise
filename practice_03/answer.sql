-- User's solution using Window Functions
with orders_2023 as 
(
	select  
		*
	from orders 
	where date_part('year',order_date) = 2023
), 
joined_orders_2023_and_customers as 
(
	select 
		o.order_id as order_id, 
		o.customer_id as customer_id,
		c.customer_name as customer_name, 
		o.order_amount as order_amount, 
		c.region as region 
	from orders_2023 o 
	left join customers c 	
	on o.customer_id = c.customer_id 
), 
grouped_data_customers_and_regions as (
	select 
		customer_name, 
		region, 
		sum(order_amount) as total_sales
	from joined_orders_2023_and_customers
	group by customer_name, region 
), 
ranked_customers_by_region as (
	select 
		customer_name, 
		region, 
		total_sales, 
		row_number () over (partition by region order by total_sales desc) as rank_
	from grouped_data_customers_and_regions 
)
select * from ranked_customers_by_region where rank_ <= 2;