SELECT count(DISTINCT s_suppkey) 
FROM supplier
INNER JOIN partsupp ON ps_suppkey = s_suppkey
INNER JOIN part ON ps_partkey = p_partkey
INNER JOIN nation ON n_nationkey = s_nationkey
WHERE p_retailprice = (SELECT max(p_retailprice) FROM part);
