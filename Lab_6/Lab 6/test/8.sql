--Find  how  many  distinct  customers  have  at  least  one  order  supplied  exclusively  by  suppliers  from AMERICA.

SELECT COUNT(DISTINCT c_name)
FROM orders, customer
WHERE c_custkey = o_custkey
AND o_orderkey 
NOT IN (SELECT DISTINCT(o_orderkey)
FROM supplier, region, nation, lineitem, orders
WHERE r_regionkey = n_regionkey
AND n_nationkey = s_nationkey AND s_suppkey = l_suppkey AND o_orderkey = l_orderkey AND r_name NOT IN ('AMERICA'));