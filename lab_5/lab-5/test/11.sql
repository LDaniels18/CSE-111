--test

--Find the lowest value line item(s) (l extendedprice*(1-l discount)) shipped after October 2,
--1996. Print the name of the part corresponding to these line item(s).

select p_name
from part
INNER JOIN lineitem ON l_partkey = p_partkey
INNER JOIN orders ON o_orderkey = l_orderkey
where o_orderdate > '1996-10-02'; --and o_totalprice < min(l_extendedprice * (1-l_discount));
--order by (l_extendedprice * (1-l_discount))
--LIMIT(SELECT count(l_extendedprice * (1-l_discount))  
--FROM lineitem);


