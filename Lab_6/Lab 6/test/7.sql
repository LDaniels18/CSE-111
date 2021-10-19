WITH lessThan AS
(
SELECT s_suppkey FROM nation
INNER JOIN supplier ON s_suppkey = l_suppkey
INNER JOIN lineitem ON l_orderkey = o_orderkey
INNER JOIN customer ON c_nationkey = n_nationkey
INNER JOIN orders ON o_custkey = c_custkey
WHERE n_name IN ('GERMANY', 'FRANCE')
GROUP BY s_suppkey
HAVING count(DISTINCT o_orderkey) < 50
)
SELECT count(*)
FROM lessThan;
