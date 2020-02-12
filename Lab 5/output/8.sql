select count(distinct s_suppkey)
from part, supplier, partsupp
where p_type like 'MEDIUM_POLISHED%' and (p_size = 3 or p_size = 23 or p_size = 26 or p_size = 49) and p_partkey = ps_partkey and ps_suppkey = s_suppkey