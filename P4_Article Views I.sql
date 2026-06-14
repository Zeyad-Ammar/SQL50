
select distinct author_id as id from views as V
where V.author_id=V.viewer_id
order by id 


-- the second solution

select author_id as id from Views
where
author_id=viewer_id
group by author_id
order by author_id 
