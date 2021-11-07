--test - done
SELECT r_name, count(s_suppkey) FROM supplier 
INNER JOIN nation ON s_nationkey = n_nationkey
INNER JOIN region ON n_regionkey = r_regionkey
INNER JOIN(SELECT r_name AS regionTable, avg(s_acctbal) AS r_avg_acctbacl FROM supplier
INNER JOIN nation ON s_nationkey = n_nationkey
INNER JOIN region ON n_regionkey = r_regionkey
GROUP BY r_name) AS avg_table ON avg_table.regionTable = r_name
WHERE s_acctbal < avg_table.r_avg_acctbacl
GROUP BY r_name;
