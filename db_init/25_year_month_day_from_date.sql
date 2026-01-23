select date_part('year',order_date) as year from orders o  limit 10;
select date_part('month',order_date) as month from orders o limit 10;
select date_part('day',order_date) as day from orders o limit 10; 