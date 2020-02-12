select s1.r_name, c1.r_name,sum(l_extendedprice)
from region s1, nation s2, nation c2, region c1, customer, orders, lineitem, supplier
where s1.r_regionkey = s2.n_regionkey and s2.n_nationkey = s_nationkey and s_suppkey = l_suppkey and c2.n_regionkey = c1.r_regionkey and o_custkey = c_custkey and c_nationkey = c2.n_nationkey and l_orderkey = o_orderkey
group by s1.r_name, c1.r_name