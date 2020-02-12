select count(distinct o_orderkey)
from supplier, customer, orders, lineitem
where s_nationkey in
(select n_nationkey from nation where n_regionkey = 3)
and
o_custkey = c_custkey
and c_nationkey = 3
and s_suppkey = l_suppkey
and l_orderkey = o_orderkey