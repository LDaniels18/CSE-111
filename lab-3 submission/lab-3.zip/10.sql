--Find the total price oF total price 
--of orders made by customers from AMERICA in 1996.

SELECT sum(orders.o_totalprice) as Total_Price 
FROM orders, customer, nation, region
-- some general linking to get the numbers we want
WHERE orders.o_custkey = customer.c_custkey AND customer.c_nationkey = nation.n_nationkey 
AND nation.n_regionkey = region.r_regionkey --we have to compare keys to find the customers
AND region.r_regionkey = 1 AND strftime('%Y', orders.o_orderdate) = '1996'; -- using the extraction to find the dates
