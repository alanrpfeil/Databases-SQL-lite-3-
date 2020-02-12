select o_orderpriority, count(distinct o_orderkey)
from orders, lineitem
where o_orderdate < '1997-01-01' and o_orderdate >= '1996-10-01' and o_orderkey = l_orderkey
and l_receiptdate > l_commitdate
group by o_orderpriority