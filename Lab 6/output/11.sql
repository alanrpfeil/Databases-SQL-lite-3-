select n_name from 
(
select n_name, count(distinct c_custkey) as total from nation, customer
where c_nationkey = n_nationkey
group by n_name
) N
where N.total = (
select max(M.total) from
(
select n_name, count(distinct c_custkey) as total from nation, customer
where c_nationkey = n_nationkey
group by n_name
) M
)