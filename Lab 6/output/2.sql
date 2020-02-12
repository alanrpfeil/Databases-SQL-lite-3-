select count(distinct M1.c_custkey) from (
select c_custkey
from customer, orders
where c_custkey = o_custkey and o_orderdate like '1995-08%'
) M1
,
(
select c_custkey
from customer, orders
where c_custkey = o_custkey and o_orderdate like '1995-08%'
) M2
where M1.c_custkey < M2.c_custkey