select n_name Nation, M.s_num Number_of_Suppliers, M.bal
from nation, supplier, 
(
select s1.s_nationkey as natkey, count(distinct s2.s_name) as s_num, avg(s2.s_acctbal) as bal
from supplier s1, supplier s2
where s1.s_nationkey = s2.s_nationkey
group by s1.s_nationkey
) M
where M.natkey = n_nationkey and M.s_num >= 5
group by n_name