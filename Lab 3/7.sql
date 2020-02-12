select l_receiptdate, count(l_receiptdate) from lineitem,
(select o_orderkey from orders where o_custkey = 118)
where l_orderkey = o_orderkey
group by l_receiptdate