--How many orders are posted by customers in every country in AMERICA?

SELECT n_name, count(o_orderkey)
FROM orders
--gathering matching customers to their orders 
INNER JOIN customer ON customer.c_custkey = orders.o_custkey
--making sure the nations match the region 
INNER JOIN region ON nation.n_regionkey = region.r_regionkey
--the nation needs to match the customers nation 
INNER JOIN nation ON nation.n_nationkey = customer.c_nationkey 
--all seperated by the region being America 
WHERE r_name = 'AMERICA'
GROUP BY n_name;