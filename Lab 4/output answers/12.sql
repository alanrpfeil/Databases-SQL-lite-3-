


select r_name, max(s_acctbal)
from supplier, region
where s_nationkey in (
select n_nationkey from nation where n_regionkey = 0 and r_regionkey = 0
)


UNION


select r_name, max(s_acctbal)
from supplier, region
where s_nationkey in (
select n_nationkey from nation where n_regionkey = 1 and r_regionkey = 1
)


UNION

select r_name, max(s_acctbal)
from supplier, region
where s_nationkey in (
select n_nationkey from nation where n_regionkey = 2 and r_regionkey = 2
)

UNION


select r_name, max(s_acctbal)
from supplier, region
where s_nationkey in (
select n_nationkey from nation where n_regionkey = 3 and r_regionkey = 3
)

UNION

select r_name, max(s_acctbal)
from supplier, region
where s_nationkey in (
select n_nationkey from nation where n_regionkey = 4 and r_regionkey = 4
)

