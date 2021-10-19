
SELECT DISTINCT p_name
FROM customer, part, lineitem, orders, nation, region
WHERE p_partkey = l_partkey AND l_orderkey = o_orderkey AND o_custkey = c_custkey AND c_nationkey = n_nationkey 
AND n_regionkey = r_regionkey AND r_name = 'AMERICA' AND p_name 
IN(SELECT p_name
FROM part, lineitem, supplier, nation, region
WHERE p_partkey = l_partkey AND l_suppkey = s_suppkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA'
GROUP BY p_name
HAVING COUNT(s_suppkey) = 3)
ORDER BY p_name;