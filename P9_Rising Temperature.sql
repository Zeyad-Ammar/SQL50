/* Write your T-SQL query statement below */
select Today.id from Weather as Today
join
Weather as Yesterday
on
datediff(day,Yesterday.recordDate ,Today.recordDate ) = 1
where Today.temperature > Yesterday.temperature 
