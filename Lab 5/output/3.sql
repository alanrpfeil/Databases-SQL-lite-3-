select max(l_discount)
from lineitem, orders
where o_orderdate like '1995-05%' and l_orderkey = o_orderkey and l_discount < (select avg(l_discount) from lineitem)