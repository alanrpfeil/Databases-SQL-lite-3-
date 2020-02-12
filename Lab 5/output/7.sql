select o_orderpriority, count(l_partkey)
from orders, lineitem
where o_orderkey = l_orderkey and o_orderdate like '1996%' and l_receiptdate < l_commitdate
group by o_orderpriority