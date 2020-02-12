select n_name, count(distinct c_name), count(distinct s_name)
from nation, customer, supplier
where n_regionkey = 3 and c_nationkey = n_nationkey and s_nationkey = c_nationkey and s_nationkey = n_nationkey
group by n_name