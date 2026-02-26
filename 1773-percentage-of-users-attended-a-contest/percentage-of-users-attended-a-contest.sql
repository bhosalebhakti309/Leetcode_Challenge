# Write your MySQL query statement below
# so can i get the the ans customers registered for each contest divide by total customers 
select contest_id,round(count(r.user_id)/(select count(*) from users u where u.user_id is not null)*100,2) as percentage
from register r
group by contest_id
order by percentage desc, contest_id asc;