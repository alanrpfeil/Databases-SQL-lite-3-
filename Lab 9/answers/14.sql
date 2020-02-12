select s_region, q1.c_region, round(sum(l_extendedprice))
from Q1 q1, orders, lineitem, Q2 q2
where s_suppkey = l_suppkey and o_custkey = q1.c_custkey and l_orderkey = o_orderkey
group by s_region, q1.c_region