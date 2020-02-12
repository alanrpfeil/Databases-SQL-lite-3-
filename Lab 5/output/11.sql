select max(l_extendedprice * (1 - l_discount)) as highest_value
from lineitem, orders
where o_orderkey = l_orderkey and o_orderdate < '1994-10-02' and l_linestatus = 'O'