# Write your MySQL query statement below
 with bhakti as(select p.product_id as product_id,units, price * units as revenue,
sum(units) over(partition by p.product_id) total_quantity,
sum(price*units) over(partition by p.product_id) as total_revenue,
ifnull(round(sum(price*units) over(partition by p.product_id)/sum(units) over(partition by p.product_id),2),0)  average
 from Prices p
left join UnitsSold us
on p.product_id = us.product_id 
and purchase_date between start_date and end_date)
select product_id,
average as  average_price
from bhakti
group by product_id;

