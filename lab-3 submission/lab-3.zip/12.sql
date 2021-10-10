--Find the number of orders having status F. 
--Group these orders based on the region of the customer 
--who posted the order.  
--Print the region name and the number of status F orders.

select r_name, count(*) AS Num_Orders  --count(*) will allow for total numbers within table order
FROM region, orders, nation, customer
WHERE nation.n_nationkey = customer.c_nationkey
--comparing nations to customers so we can compare by region. 
AND nation.n_regionkey = region.r_regionkey 
AND customer.c_custkey = orders.o_custkey 
AND orders.o_orderstatus = 'F' --finding the F status 
GROUP BY r_name; --again gathering our names

