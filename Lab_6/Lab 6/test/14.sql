WITH LocalSupplier AS(

SELECT n_name AS SupplyNation, count(l_linenumber) AS NumberSuppliers FROM nation
INNER JOIN lineitem ON l_suppkey = s_suppkey
INNER JOIN customer ON c_custkey = o_custkey
INNER JOIN orders ON o_orderkey = l_orderkey
INNER JOIN supplier ON s_nationkey = n_nationkey
WHERE c_nationkey != n_nationkey AND strftime('%Y',l_shipdate) = '1994'
GROUP BY n_name), 

LocalCustomer AS (SELECT n_name AS NationCustomer, count(l_linenumber) AS numLocalCustomer FROM supplier
INNER JOIN lineitem ON l_suppkey = s_suppkey
INNER JOIN customer ON c_custkey = o_custkey
INNER JOIN orders ON o_orderkey = l_orderkey
INNER JOIN nation ON n_nationkey = c_nationkey
WHERE s_nationkey != n_nationkey AND strftime('%Y',l_shipdate) = '1994'
GROUP BY n_name)

SELECT LocalSupplier.SupplyNation, LocalSupplier.NumberSuppliers - LocalCustomer.numLocalCustomer
FROM LocalSupplier, LocalCustomer
WHERE LocalSupplier.SupplyNation = LocalCustomer.NationCustomer
GROUP BY LocalSupplier.SupplyNation;
