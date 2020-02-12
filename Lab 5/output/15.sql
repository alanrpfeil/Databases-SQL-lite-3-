select (N.marketshare / M.totalshare) as US_Market_Share_of_EU_1996 from
(
(
select sum((l_extendedprice * (1 - l_discount))) as marketshare from lineitem, supplier, orders, customer
where l_suppkey = s_suppkey and l_orderkey = o_orderkey and o_custkey = c_custkey and l_shipdate like '1996%' and s_nationkey = 24
and c_nationkey in (select n_nationkey from nation where n_regionkey = 3)
) N
,
(
select sum((l_extendedprice * (1 - l_discount))) as totalshare from lineitem, supplier
where l_suppkey = s_suppkey and l_shipdate like '1996%' and s_nationkey in (select n_nationkey from nation where n_regionkey = 3)
) M
)