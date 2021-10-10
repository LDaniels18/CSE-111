/*  Find the total price paid on orders by every customer from FRANCE in 1995.  
    Print the customer name and the total price. */
SELECT c_name, SUM(o_totalprice) 
FROM orders
INNER JOIN nation ON nation.n_nationkey = customer.c_nationkey
INNER JOIN customer ON customer.c_custkey = orders.o_custkey
WHERE nation.n_name = 'FRANCE' AND strftime('%Y', orders.o_orderdate) = '1995'
GROUP BY c_name;