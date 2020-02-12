select n_name from nation,
(
select distinct c_nationkey from customer, (
    select o_custkey from orders where o_orderdate >= '1996-12-01' and o_orderdate <= '1996-12-31'
) where c_custkey = o_custkey
) where n_nationkey = c_nationkey;