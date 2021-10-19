
SELECT n_name AS NationName
FROM(SELECT n_name, sum(l_extendedprice)
FROM nation
INNER JOIN supplier ON s_nationkey = n_nationkey
INNER JOIN lineitem ON l_suppkey = s_suppkey
WHERE l_shipdate LIKE '1994%');