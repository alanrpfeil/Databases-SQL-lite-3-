select M.n_name, (M.value - N.value) from (
(
select n_name, sum(l_extendedprice) as value from nation, lineitem, supplier
where n_nationkey = s_nationkey and s_suppkey = l_suppkey and l_shipdate like '1996%'
group by n_name
) M
,
(
select n_name, sum(l_extendedprice) as value from nation, lineitem, customer, orders
where n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderkey = l_orderkey and l_shipdate like '1996%'
group by n_name
) N
)
where M.n_name = N.n_name
group by M.n_name