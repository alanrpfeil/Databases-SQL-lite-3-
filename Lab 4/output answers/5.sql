select c_name, count(distinct o_orderkey)
from customer, orders, lineitem
where l_orderkey = o_orderkey and c_nationkey = 7 and o_orderdate like '1995%' and o_custkey = c_custkey
group by c_name