Select s_name, s_acctbal from supplier where s_nationkey in
(
select n_nationkey from nation
WHERE n_regionkey = (
                         SELECT r_regionkey
                           FROM region
                          WHERE r_name = 'ASIA'
                     )
)