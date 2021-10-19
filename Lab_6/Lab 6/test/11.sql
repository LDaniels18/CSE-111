
SELECT n_name 
FROM (SELECT n_name, min(Customers)
FROM (SELECT n_name, count(c_custkey) AS Customers
FROM nation
INNER JOIN customer ON c_nationkey = n_nationkey
GROUP BY n_name));