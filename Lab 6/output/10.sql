select N.r_name from (
select M.r_name, max(M.total) from
(
select r_name, sum(l_extendedprice) as total from region, lineitem, customer, supplier, orders, nation
where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderkey = l_orderkey and l_suppkey = s_suppkey and s_nationkey = c_nationkey
group by r_name
) M
)N