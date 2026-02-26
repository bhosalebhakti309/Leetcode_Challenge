# Write your MySQL query statement below
with full_name as(select user_id,Upper(substring(name,1,1)) as first_char,
lower(substring(name,2,length(name))) as rest,
concat(Upper(substring(name,1,1)),lower(substring(name,2,length(name)))) as name
from Users)
select user_id,name
from full_name 
order by user_id;
