select count(distinct o_custkey) from lineitem, orders
where l_discount >= 0.04 and l_orderkey = o_orderkey