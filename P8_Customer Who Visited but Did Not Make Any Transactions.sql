--from where groups have selected order
select V.customer_id , count(*) as count_no_trans  from Visits as V
left join 
Transactions as T
on T.visit_id = V.visit_id 
where T.transaction_id is null
group by V.customer_id ;
