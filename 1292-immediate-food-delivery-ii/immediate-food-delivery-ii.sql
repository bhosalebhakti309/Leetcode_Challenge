with bhakti as(select * from (select 
*,dense_rank() over(partition by customer_id order by order_date asc) lt,
case 
when order_date = customer_pref_delivery_date 
then 'immediate'
else 
'scheduled'
end as status 
from delivery)t
where lt = 1 
)
select
round((select count(*) from bhakti where status= 'immediate')/ count(*) * 100,2) as immediate_percentage
from bhakti;