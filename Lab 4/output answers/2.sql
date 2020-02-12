select n_name, count(s_name)
from nation, supplier
where s_nationkey = n_nationkey
group by n_name