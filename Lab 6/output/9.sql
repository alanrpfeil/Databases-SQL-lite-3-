select M.p_name from
(
select c_custkey, p_name, p_partkey, l_suppkey from customer, part, orders, lineitem
where c_nationkey = 24 and c_custkey = o_custkey and o_orderkey = l_orderkey and l_partkey = p_partkey
) M
where (select count(distinct s_suppkey) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 2)
and M.l_suppkey = s_suppkey group by M.c_custkey) = 4