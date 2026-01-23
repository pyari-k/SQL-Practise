select 
order_date, 
date_part('month',order_date) as month, 
case when date_part('month',order_date) <= 3 then 1 
	 when date_part('month', order_date) <= 6 then 2 
	 when date_part('month', order_date) <= 9 then 3
	 when date_part('month', order_date) > 9 then 4
	 end as quarter
from orders order by month