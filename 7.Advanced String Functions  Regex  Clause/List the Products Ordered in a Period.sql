
select Products.product_name,sum(Orders.unit) as unit from Orders,Products where Orders.product_id=Products.product_id
and Orders.order_date between '2020-02-01' and '2020-02-29'
 group by Products.product_id having unit>=100;