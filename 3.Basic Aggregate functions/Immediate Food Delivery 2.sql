select ROUND(count(delivery_id)*100/(select count(distinct customer_id) from Delivery),2) 
as immediate_percentage from Delivery 
where (customer_id,customer_pref_delivery_date) in 
(select customer_id,min(order_date)as customer_pref_delivery_date 
from Delivery group by customer_id order by order_date);