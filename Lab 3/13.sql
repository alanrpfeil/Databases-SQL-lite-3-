select avg(c_acctbal) from customer where c_mktsegment = 'MACHINERY' and c_nationkey in
(
select n_nationkey from nation
where n_regionkey in
(
 SELECT r_regionkey
 FROM region
 WHERE r_name = 'EUROPE'
)
)