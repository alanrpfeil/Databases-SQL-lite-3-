select n_name, count(o_custkey)
from nation, customer, orders
where c_nationkey = n_nationkey and n_regionkey = 3 and o_custkey = c_custkey
group by n_name