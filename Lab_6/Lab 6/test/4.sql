SELECT count(results.s_suppkey)
FROM (SELECT s_suppkey 
FROM supplier
INNER JOIN partsupp ON ps_suppkey = s_suppkey
INNER JOIN part ON ps_partkey = p_partkey
INNER JOIN nation ON n_nationkey = s_nationkey
WHERE n_name = "UNITED STATES"
GROUP BY s_suppkey
HAVING count(DISTINCT p_partkey) >= 40) AS results;