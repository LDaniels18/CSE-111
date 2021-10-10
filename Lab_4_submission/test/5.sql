/*  Find the number of orders posted by every customer from GERMANY in 1993. */
SELECT c_name, count(o_orderkey)
FROM nation, orders, customer
WHERE n_name = 'GERMANY' AND o_custkey = c_custkey AND c_nationkey = n_nationkey AND o_orderdate between '1993-01-01' AND '1993-12-31'
GROUP BY o_custkey; 