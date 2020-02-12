create trigger orderDateEntry
    after insert on orders
    begin
    update orders set o_orderdate = datetime('now')
    where new.o_orderkey = o_orderkey;
end;    

insert into orders 
select * from orders where o_orderdate like '%1996-08%';

select * from orders where o_orderdate like '2019%';