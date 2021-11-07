--test done
SELECT count(DISTINCT s_name) FROM supplier
INNER JOIN partsupp ON s_suppkey = ps_suppkey
INNER JOIN part ON p_partkey = ps_partkey
WHERE p_type LIKE '%POLISHED%' AND p_size IN (3, 23, 36, 49);
--GROUP BY s_name;
