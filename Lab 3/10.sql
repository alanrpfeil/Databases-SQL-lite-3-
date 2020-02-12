select sum(o_totalprice)
from orders, customer
where c_nationkey IN (
select distinct n_nationkey from nation n, region r
WHERE n.n_regionkey = (
    select r_regionkey from region where r_name = 'EUROPE'
    ) 
)
and c_custkey = o_custkey and o_orderdate LIKE '1996-__-__'