select p_type, max_discount
from Q10
where p_type like 'ECONOMY%'
group by p_type