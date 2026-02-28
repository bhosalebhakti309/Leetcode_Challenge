# Write your MySQL query statement below
select id,
sum(case when month='Jan' then revenue end) as Jan_Revenue,
sum(case when month='Feb' then Revenue end )as Feb_Revenue,
sum(case when month='Mar' then Revenue end) as Mar_Revenue,
sum(case when month= 'Apr' then Revenue end) as Apr_Revenue,
sum(case when month= 'may' then Revenue end) as May_Revenue,
sum(case when month= 'jun' then Revenue end) as Jun_Revenue,
sum(case when month= 'jul' then Revenue end) as Jul_Revenue,
sum(case when month= 'aug' then Revenue end) as Aug_Revenue,
sum(case when month= 'sep' then Revenue end) as Sep_Revenue,
sum(case when month= 'oct' then Revenue end) as Oct_Revenue,
sum(case when month= 'nov' then Revenue end) as Nov_Revenue,
sum(case when month= 'dec' then Revenue end) as Dec_Revenue
from department
group by id;
