select count(s_name) from (
select s_name, count(distinct ps_partkey)
from supplier, partsupp
where s_nationkey = 3
group by s_name
)