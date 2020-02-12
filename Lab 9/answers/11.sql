select M.s_region, M.s_name from
(
select s_region, s_name, max(s_acctbal)
from Q2
where s_region = 'AFRICA'

UNION

select s_region, s_name, max(s_acctbal)
from Q2
where s_region = 'AMERICA'

UNION

select s_region, s_name, max(s_acctbal)
from Q2
where s_region = 'ASIA'

UNION

select s_region, s_name, max(s_acctbal)
from Q2
where s_region = 'EUROPE'

UNION

select s_region, s_name, max(s_acctbal)
from Q2
where s_region = 'MIDDLE EAST'
) M