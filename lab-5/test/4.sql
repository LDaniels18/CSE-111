--test - done

-- SELECT n_name, count(c_custkey), count(s_suppkey)  FROM customer
-- INNER JOIN region on r_regionkey IS n_regionkey
-- INNER JOIN nation on n_nationkey IS s_nationkey
-- INNER JOIN supplier on s_nationkey IS c_nationkey
-- WHERE r_name IS 'AFRICA'
-- GROUP BY n_name;

SELECT cust_n_name, cust_counts, supp_counts FROM (SELECT n_name AS cust_n_name,
count(c_custkey) AS cust_counts FROM customer
INNER JOIN nation on c_nationkey IS n_nationkey
INNER JOIN region on n_regionkey IS r_regionkey
WHERE r_name IS 'AFRICA'
GROUP BY n_name)
AS t_cust_counts 
join(SELECT n_name AS supp_n_name,
count(s_suppkey) AS supp_counts FROM supplier
INNER JOIN nation on s_nationkey IS n_nationkey
INNER JOIN region on n_regionkey IS r_regionkey
WHERE r_name IS 'AFRICA'
GROUP BY n_name) 
AS t_supp_counts on cust_n_name IS supp_n_name;
