select count(distinct s_suppkey) from supplier, partsupp, part
where s_suppkey = ps_suppkey and ps_partkey = p_partkey and p_retailprice = (select min(p_retailprice) from part)