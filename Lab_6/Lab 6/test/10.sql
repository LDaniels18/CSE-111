SELECT r_name FROM region
INNER JOIN customer ON c_nationkey = s_nationkey
INNER JOIN supplier ON s_nationkey = n_nationkey
INNER JOIN nation ON n_regionkey = r_regionkey
INNER JOIN lineitem ON l_suppkey = s_suppkey
WHERE l_extendedprice = (SELECT min(l_extendedprice) FROM lineitem)
GROUP BY r_name;
