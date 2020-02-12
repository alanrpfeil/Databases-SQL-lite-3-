select count(distinct o_orderkey)
from supplier, customer, orders, lineitem
where s_acctbal > 0 and c_acctbal < 0 and s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_custkey = c_custkey