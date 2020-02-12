select n_name from 
(
select n_name, sum(o_totalprice) as total from nation, customer, orders
where c_nationkey = n_nationkey and c_custkey = o_custkey
group by n_name
) N
where N.total = (
select max(M.total) from
(
select n_name, sum(o_totalprice) as total from nation, customer, orders
where c_nationkey = n_nationkey and c_custkey = o_custkey
group by n_name
) M
)