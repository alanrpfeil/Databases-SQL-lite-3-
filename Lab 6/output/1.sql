select '01' as Month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-01%'

UNION

select '02' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-02%'

UNION

select '03' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-03%'

UNION

select '04' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-04%'

UNION

select '05' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-05%'

UNION

select '06' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-06%'

UNION

select '07' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-07%'

UNION

select '08' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-08%'

UNION

select '09' as month, avg(l_quantity)
from lineitem

UNION

select '10' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-10%'

UNION

select '11' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-11%'

UNION

select '12' as month, avg(l_quantity)
from lineitem
where l_shipdate like '1996-12%'