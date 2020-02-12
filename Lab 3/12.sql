select * from
(
select r_name, count(o_orderstatus) as finished_orders
from orders, region,
(
   select c_custkey from customer, (
   select n_nationkey from nation where n_regionkey = 0
   ) M where M.n_nationkey = c_nationkey
) W where W.c_custkey = o_custkey and r_regionkey = 0 and o_orderstatus = 'F'

union

   select r_name, count(o_orderstatus)
from orders, region,
(
   select c_custkey from customer, (
   select n_nationkey from nation where n_regionkey = 1
   ) M where M.n_nationkey = c_nationkey
) W where W.c_custkey = o_custkey and r_regionkey = 1 and o_orderstatus = 'F'

union 

   select r_name, count(o_orderstatus)
from orders, region,
(
   select c_custkey from customer, (
   select n_nationkey from nation where n_regionkey = 2
   ) M where M.n_nationkey = c_nationkey
) W where W.c_custkey = o_custkey and r_regionkey = 2 and o_orderstatus = 'F'

union

   select r_name, count(o_orderstatus)
from orders, region,
(
   select c_custkey from customer, (
   select n_nationkey from nation where n_regionkey = 3
   ) M where M.n_nationkey = c_nationkey
) W where W.c_custkey = o_custkey and r_regionkey = 3 and o_orderstatus = 'F'

union

   select r_name, count(o_orderstatus)
from orders, region,
(
   select c_custkey from customer, (
   select n_nationkey from nation where n_regionkey = 4
   ) M where M.n_nationkey = c_nationkey
) W where W.c_custkey = o_custkey and r_regionkey = 4 and o_orderstatus = 'F'
) A
group by -A.finished_orders
