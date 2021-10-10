/*  How many unique parts produced by every supplier in CANADA are ordered at every priority?
    Print the supplier name, the order priority, and the number of parts. */
SELECT s_name, o_orderpriority, count(distinct(p_partkey))
FROM supplier, nation, orders, part, region, lineitem
WHERE n_name = 'CANADA' AND n_nationkey = s_nationkey AND r_regionkey = n_regionkey AND s_suppkey = l_suppkey AND l_partkey = p_partkey AND l_orderkey = o_orderkey
GROUP BY s_name, o_orderpriority;
 