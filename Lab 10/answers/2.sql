create trigger negBal
after update on customer
for each row
when old.c_acctbal > 0 and new.c_acctbal < 0
BEGIN
update customer
set c_comment = "Negative balance!!! Add money now!"
where c_acctbal < 0;
END;

create trigger posBal
after update on customer
for each row
when old.c_acctbal < 0 and new.c_acctbal >= 0
BEGIN
update customer
set c_comment = " "
where c_acctbal >= 0;
END;

update customer
set c_acctbal = -100
where c_nationkey in (select n_nationkey from nation where n_regionkey = 2);

select count(c_custkey) from customer
where c_acctbal < 0 and c_nationkey = 18;

update customer
set c_acctbal = 100
where c_nationkey = 12;

select count(c_custkey) from customer
where c_acctbal < 0 and c_nationkey in (select n_nationkey from nation where n_regionkey = 2);