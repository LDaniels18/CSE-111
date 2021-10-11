--test DONE
--select ps_supplycost from partsupp, part, lineitem
--where p_retailprice < 1000 and substr('%Y', l_shipdate) is '1997'

SELECT Sum(ps_supplycost)
FROM partsupp
INNER JOIN part ON p_partkey = ps_partkey
INNER JOIN supplier as sup1 ON s_suppkey = ps_suppkey
INNER JOIN lineitem ON l_partkey = ps_partkey
WHERE p_retailprice < 1000 AND strftime('%Y', l_shipdate) = '1997'
AND NOT EXISTS (SELECT * FROM supplier AS sup2
INNER JOIN lineitem ON l_suppkey = sup1.s_suppkey
WHERE sup2.s_name = sup1.s_name AND l_extendedprice < 2000 AND strftime('%Y', l_shipdate) = '1996');