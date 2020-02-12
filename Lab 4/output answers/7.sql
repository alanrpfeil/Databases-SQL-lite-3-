select n_name, o_orderstatus, COUNT(o_orderkey) from orders, nation, region, customer
where c_custkey = o_custkey and n_nationkey = c_nationkey and r_regionkey = n_regionkey and r_name = 'ASIA'
group by n_name, o_orderstatus