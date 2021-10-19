SELECT count(results.p_partkey) 
FROM (SELECT part.p_partkey 
FROM supplier
INNER JOIN partsupp ON ps_suppkey = s_suppkey
INNER JOIN part ON ps_partkey = p_partkey
INNER JOIN nation ON n_nationkey = s_nationkey
WHERE n_name = "UNITED STATES"
GROUP BY p_partkey having count(DISTINCT s_suppkey) = 2) AS results;
