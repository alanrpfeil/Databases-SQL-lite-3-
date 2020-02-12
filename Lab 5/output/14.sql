select r1.r_name, r2.r_name, l1.l_shipdate, sum(l1.l_extendedprice * (1 - l1.l_discount))
from lineitem l1, lineitem l2, nation n1, nation n2, region r1, region r2, supplier s1, supplier s2
where (l1.l_shipdate like '1995%' or l1.l_shipdate like '1996%') and l1.l_suppkey = s1.s_suppkey 
and l2.l_suppkey = s2.s_suppkey and l2.l_suppkey <> l1.l_suppkey and s1.s_nationkey = n1.n_nationkey
and s2.s_nationkey = n2.n_nationkey and n1.n_regionkey = r1.r_regionkey and n2.n_regionkey = r2.r_regionkey
group by r1.r_name, r2.r_name