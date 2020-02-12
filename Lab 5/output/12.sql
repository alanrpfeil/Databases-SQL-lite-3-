select sum(distinct ps_supplycost)
from partsupp, part, supplier, lineitem
where p_retailprice < 1000 and p_partkey = ps_partkey and p_partkey = l_partkey and l_shipdate like '1996%' and ps_suppkey = s_suppkey and s_suppkey not in
(select distinct s_suppkey from supplier, lineitem where s_suppkey = l_suppkey and l_extendedprice < 1000 and l_shipdate like '1995%')