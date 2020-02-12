select count(distinct o_clerk)
from orders, lineitem
where l_orderkey = o_orderkey and l_suppkey in
(
select s_suppkey from supplier
where s_nationkey = 22
)