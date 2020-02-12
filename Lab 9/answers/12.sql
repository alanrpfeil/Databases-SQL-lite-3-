select s_region, max(s_acctbal)
from Q2
where s_region = 'AFRICA'

UNION

select s_region, max(s_acctbal)
from Q2
where s_region = 'AMERICA'


UNION

select s_region, max(s_acctbal)
from Q2
where s_region = 'ASIA'

UNION

select s_region, max(s_acctbal)
from Q2
where s_region = 'EUROPE'

UNION

select s_region, max(s_acctbal)
from Q2
where s_region = 'MIDDLE EAST'