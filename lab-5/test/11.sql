--test
select p_name, (l_extendedprice * (1 - l_discount)) from lineitem, part, orders
where o_orderdate is '1996-10-02'
group by p_name;