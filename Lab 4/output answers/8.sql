
select M2.s_nationkey, count(M1.o_orderkey) as c
from lineitem, (
select * from orders where o_orderdate like '1995%' and o_orderstatus = 'F'
) M1
,
(
select * from supplier where s_nationkey in
(
select n_nationkey from nation where n_regionkey = 1
)
) M2
where M2.s_suppkey = l_suppkey and l_orderkey = M1.o_orderkey
group by M2.s_nationkey
