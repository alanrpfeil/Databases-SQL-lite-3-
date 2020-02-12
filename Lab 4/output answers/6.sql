select p_mfgr, o_orderpriority, count(p_partkey)
from orders, part
group by p_mfgr, o_orderpriority
