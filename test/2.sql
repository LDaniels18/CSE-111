--Find the number of suppliers from every region.

SELECT r_name, count(s_suppkey)
FROM region
INNER JOIN supplier ON supplier.s_nationkey = nation.n_nationkey
INNER JOIN nation ON nation.n_regionkey = region.r_regionkey 
GROUP BY r_name;