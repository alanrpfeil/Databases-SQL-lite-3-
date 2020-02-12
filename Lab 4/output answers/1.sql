select c_name, sum(o_totalprice), 'FRANCE'
FROM orders JOIN customer
where c_nationkey = 6 AND o_custkey = c_custkey
group by c_name