select count(o_orderpriority) from orders, customer
where o_custkey = c_custkey and o_orderpriority = '1-URGENT' and
(o_orderdate like '1994-__-__' or o_orderdate like '1995-__-__' or o_orderdate like '1996-__-__' or o_orderdate like '1997-__-__')
and c_nationkey =
(
select n_nationkey from nation
where n_name = 'BRAZIL'
)
