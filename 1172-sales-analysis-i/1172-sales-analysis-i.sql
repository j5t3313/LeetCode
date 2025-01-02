# Write your MySQL query statement below
with SalesTotal AS (
    SELECT seller_id, SUM(price) AS profit
    FROM Sales
    Group By seller_id

)
SELECT seller_id
FROM SalesTotal
WHERE profit = (
    SELECT MAX(profit)
    FROM SalesTotal
)