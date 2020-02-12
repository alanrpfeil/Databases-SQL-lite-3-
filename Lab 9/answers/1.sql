select c_name, round(sum(o_totalprice), 2), 'FRANCE'
from Q1, orders
where c_nation = 'FRANCE' and o_custkey = c_custkey and c_region = 'EUROPE'
group by c_name