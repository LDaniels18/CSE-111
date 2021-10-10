/* How many different order clerks did the suppliers in UNITED STATES work with? */
SELECT count(DISTINCT(o_clerk))
FROM supplier, nation, orders, lineitem
WHERE n_name = 'UNITED STATES' AND o_orderkey = l_orderkey AND l_suppkey = s_suppkey AND s_nationkey = n_nationkey;
 