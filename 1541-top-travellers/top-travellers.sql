# Write your MySQL quer
select name , ifnull(sum(distance),0) as travelled_distance
from Users u
left join rides r
on u.id= r.user_Id
group by u.id
order by travelled_distance desc, name asc
