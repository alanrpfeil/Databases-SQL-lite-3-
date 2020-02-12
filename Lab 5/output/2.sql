select r_name, count(s_name)
from region, supplier
where r_regionkey = 0 and s_nationkey in (select n_nationkey from nation where n_regionkey = 0) and s_acctbal > (select avg(s_acctbal) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 0))

UNION

select r_name, count(s_name)
from region, supplier
where r_regionkey = 1 and s_nationkey in (select n_nationkey from nation where n_regionkey = 1) and s_acctbal > (select avg(s_acctbal) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 1))

UNION

select r_name, count(s_name)
from region, supplier
where r_regionkey = 2 and s_nationkey in (select n_nationkey from nation where n_regionkey = 2) and s_acctbal > (select avg(s_acctbal) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 2))

UNION

select r_name, count(s_name)
from region, supplier
where r_regionkey = 3 and s_nationkey in (select n_nationkey from nation where n_regionkey = 3) and s_acctbal > (select avg(s_acctbal) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 3))
group by r_name

UNION

select r_name, count(s_name)
from region, supplier
where r_regionkey = 4 and s_nationkey in (select n_nationkey from nation where n_regionkey = 4) and s_acctbal > (select avg(s_acctbal) from supplier where s_nationkey in (select n_nationkey from nation where n_regionkey = 4))
group by r_name