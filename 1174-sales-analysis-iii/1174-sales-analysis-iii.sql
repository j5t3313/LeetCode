# Write your MySQL query statement below
select 
    Product.product_id, Product.product_name
from
    Product
join
    Sales
On
    Product.product_id = Sales.product_id
Group By 
    Sales.product_id
Having Min(Sales.sale_date) >= "2019-01-01" and max(Sales.sale_date) <= "2019-03-31";