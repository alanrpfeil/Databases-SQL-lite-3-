select n_name from (
select n_name, max(M.total) from
(
select n_name, sum(l_extendedprice) as total from nation, supplier, orders, lineitem
where s_nationkey = n_nationkey and s_suppkey = l_suppkey and o_orderkey = l_orderkey and l_shipdate like '1996%'
group by n_name
) M
)
