-- from where groubs have selected order
select p.product_name , S.Year, S.Price  from Sales as S
left join
Product as P
on p.product_id   = S.product_id   ;
