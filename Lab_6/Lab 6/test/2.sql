SELECT count(results.c_custkey)
FROM (SELECT customer.c_custkey 
FROM customer
INNER JOIN orders ON customer.c_custkey = orders.o_custkey
WHERE strftime("%Y-%m", orders.o_orderdate) = "1995-11"
GROUP BY customer.c_custkey
HAVING count(customer.c_custkey) >= 3) AS results;
