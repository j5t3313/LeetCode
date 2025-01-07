# Write your MySQL query statement below
select buyer_id
from Sales s
join Product p 
on s.product_id = p.product_id
group by buyer_id
having sum(product_name='S8') >0 and sum(product_name = 'iPhone') = 0;