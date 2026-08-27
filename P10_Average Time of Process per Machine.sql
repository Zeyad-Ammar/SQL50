/* Write your T-SQL query statement below */
select SA.machine_id ,  round(avg(EA.timestamp - SA.timestamp ),3) as processing_time   from
Activity as SA
join
Activity as EA
on
SA.machine_id = EA.machine_id and
SA.process_id = EA.process_id and
SA.activity_type = 'start' and
EA.activity_type = 'end'
group by SA.machine_id
