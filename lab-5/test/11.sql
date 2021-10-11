--test DONE

--Find the lowest value line item(s) (l extendedprice*(1-l discount)) shipped after October 2,
--1996. Print the name of the part corresponding to these line item(s).

SELECT p_name
FROM (SELECT p_name, min(l_extendedprice * (1-l_discount))
    FROM lineitem
    INNER JOIN part ON p_partkey = l_partkey
    WHERE l_shipdate > '1996-10-02');

--and o_totalprice < min(;
--order by (l_extendedprice * (1-l_discount))
--LIMIT(SELECT count(l_extendedprice * (1-l_discount))  
--FROM lineitem);


