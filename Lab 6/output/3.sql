select count(distinct p1.p_partkey)
from part p1, partsupp s1, part p2 ,partsupp s2, supplier u1, supplier u2
where p1.p_partkey = s1.ps_partkey and p1.p_partkey = s2.ps_partkey and
s1.ps_suppkey <> s2.ps_suppkey and s1.ps_suppkey = u1.s_suppkey and s2.ps_suppkey = u2.s_suppkey
and u1.s_nationkey = 3 and u2.s_nationkey = 3