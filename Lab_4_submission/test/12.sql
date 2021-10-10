/*  What is the maximum account balance for the suppliers in every nation?
    Print only those nations for which the maximum balance is larger than 9000. */
SELECT n_name, MAX(s_acctbal)
FROM nation, supplier, region
WHERE s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND s_acctbal > 9000
GROUP BY n_name; 