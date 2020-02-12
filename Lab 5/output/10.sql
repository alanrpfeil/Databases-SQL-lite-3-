select r_name, count(distinct c_custkey)
from region, nation, orders,
(select * from customer where c_custkey not in (select o_custkey from orders)) M
where M.c_acctbal > (select avg(c_acctbal) from customer) and c_nationkey = n_nationkey and n_regionkey = r_regionkey
group by r_name