select count(M.s_name) from
(
select s_name, count(distinct o_orderkey) as num from supplier, orders, customer, lineitem
where s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_custkey = c_custkey
and (c_nationkey = 6 or c_nationkey = 7)
group by s_name
) M
where M.num < 30