
SELECT n_name
FROM (SELECT n_name, min(TotalPrices)
FROM (SELECT n_name, sum(o_totalprice) AS TotalPrices
FROM nation
INNER JOIN customer ON c_nationkey = n_nationkey
INNER JOIN orders ON o_custkey = c_custkey
GROUP BY n_name));