--Find the number of customers that received a discount of at 
--least 10% for one of the line items on theirorders.  Count every customer 
--exactly once even if they have multiple discounted line items.

SELECT DISTINCT count(DISTINCT c_name) AS Customers --MUST BE DISTINCT BECAUSE WE ONLY WANT TO COUNT ONCE
FROM lineitem, customer, orders
--we need to compare the customers by their orders and the count of items based of the lineitems
WHERE customer.c_custkey = orders.o_custkey 
AND orders.o_orderkey = lineitem.l_orderkey 
AND lineitem.l_discount >= 0.10; --at least 10 %
