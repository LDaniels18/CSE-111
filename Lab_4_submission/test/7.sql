/*  How many orders do customers in every nation in AMERICA have in every status? 
    Print the nation name, the order status, and the count. */
SELECT n_name, o_orderstatus, count(o_orderkey)
FROM nation, orders, region, customer
WHERE r_name = 'AMERICA' AND r_regionkey = n_regionkey AND c_nationkey = n_nationkey AND o_custkey = c_custkey
GROUP BY n_name, o_orderstatus;
 