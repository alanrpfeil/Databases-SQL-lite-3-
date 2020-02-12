select count(M.c_name) from
(
select c_name, count(distinct o_orderkey) as num from customer, lineitem, orders, nation, supplier
where c_custkey = o_custkey and o_orderkey = l_orderkey and l_suppkey = s_suppkey and s_nationkey in (select n_nationkey from nation where n_regionkey = 2)
group by c_name
) M
where M.num >= 1