# Write your MySQL query statement below
with a as (select project_id, count(employee_id) as ct
    from Project as p
    group by project_id)
select project_id
    from a
    where a.ct = (select max(ct) from a)