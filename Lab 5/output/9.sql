select count(ps_suppkey)
from partsupp, supplier
where ps_suppkey = s_suppkey and s_nationkey = 3 and (ps_availqty * ps_supplycost) >
(
select (0.97 * max(totalcost))
from
(
select (ps_supplycost*ps_availqty) as totalcost from partsupp, supplier, nation where ps_suppkey = s_suppkey and s_nationkey = 3
) 
)