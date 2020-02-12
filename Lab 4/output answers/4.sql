select s_name, count(p_size)
from supplier, part join partsupp
where s_nationkey = 2 and p_size < 20 and ps_suppkey = s_suppkey and ps_partkey = p_partkey
group by s_name