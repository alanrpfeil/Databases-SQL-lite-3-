create trigger if not exists updatingLine
after insert on lineitem
for each row
BEGIN
update orders
set o_orderpriority = '2-HIGH'
where new.l_orderkey = o_orderkey;
END;

create trigger if not exists updatingLine
after delete on lineitem
for each row
BEGIN
update orders
set o_orderpriority = 'HIGH'
where new.l_orderkey = o_orderkey;
END;

delete from lineitem
where l_shipdate like '1995-08%';

select count(o_orderpriority) from orders
where o_orderpriority = 'HIGH' and o_orderdate like '1995-08%';