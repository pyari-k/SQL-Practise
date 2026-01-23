-- User's solution
with joined_orders_and_customers as (
	select 
		o.order_id as order_id, o.order_amount as order_amount, c.region as region from orders o 
		left join customers c on c.customer_id = o.customer_id 
		where date_part('year',o.order_date) = 2003 
), 
grouped_region_wise as (
	select 
	region, sum(order_amount) as sales_amount 
	from joined_orders_and_customers group by region 	
)
select * from grouped_region_wise order by sales_amount desc limit 3;