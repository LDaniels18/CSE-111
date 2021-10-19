SELECT s_name, c_name, min(o_totalprice) 
FROM orders
INNER JOIN customer ON c_custkey = o_custkey
INNER JOIN supplier ON s_suppkey = l_suppkey
INNER JOIN lineitem ON l_orderkey = o_orderkey
WHERE o_orderstatus = 'F';
