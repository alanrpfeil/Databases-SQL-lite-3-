create trigger if not exists delPart2
after delete on part
for each row
BEGIN
delete from lineitem
where l_partkey = old.p_partkey;
delete from partsupp
where ps_partkey = old.p_partkey;
END;

delete from part where p_partkey in (
    select p_partkey from part, partsupp, supplier
    where p_partkey = ps_partkey and ps_suppkey = s_suppkey and (s_nationkey = 6) or (s_nationkey = 7));

select avg(ps_supplycost), s_name from supplier, partsupp
where ps_suppkey = s_suppkey and s_nationkey in (select n_nationkey from nation where n_regionkey = 3)
group by s_name;