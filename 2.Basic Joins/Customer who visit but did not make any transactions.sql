select customer_id,count(customer_id) as count_no_trans from Visits where visit_id 
not in(select Visits.visit_id from Visits,Transactions where Visits.visit_id=Transactions.visit_id)
group by customer_id;