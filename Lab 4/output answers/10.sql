select p_type, max(l_discount)
from lineitem, part
where p_partkey = l_partkey and p_type like 'ECONOMY%'
group by p_type