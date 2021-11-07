--test done
SELECT o_orderpriority, count(p_partkey) FROM part
INNER JOIN lineitem ON l_partkey IS p_partkey
INNER JOIN orders ON o_orderkey IS l_orderkey
WHERE strftime('%Y', o_orderdate) IS '1997' AND l_receiptdate > l_commitdate
GROUP BY o_orderpriority;