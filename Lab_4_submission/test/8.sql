/*  Find the number of distinct orders completed in 1995 by the suppliers in every nation.  
    An order status of F stands for complete.  
    Print only those nations for which the number of orders is larger than 50. */
SELECT n_name, Y
FROM(
SELECT n_name, count(DISTINCT(l_orderkey)) as Y
FROM orders, supplier, nation, region, lineitem
WHERE s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND l_suppkey = s_suppkey AND o_orderkey = l_orderkey AND o_orderstatus = 'F' AND o_orderdate BETWEEN '1995-01-01' AND '1995-12-31'
GROUP BY n_name)
WHERE Y > 50;