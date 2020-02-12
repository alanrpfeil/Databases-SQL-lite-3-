select s_name, p_size, min(ps_supplycost) from part, partsupp, nation, supplier, region
where p_partkey = ps_partkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey
and n_regionkey = r_regionkey and p_type like '%STEEL%' and r_regionkey = 1
group by p_size
order by s_name