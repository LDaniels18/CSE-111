-- SQLite
--.headers ON

-- What are the nations of customers who made orders betweenSeptember 10-12, 1996?  Print everynation only once and sort them in alphabetical order.
--we need to use INNER JOIN to combine Tables

SELECT n_name 
FROM nation 
INNER JOIN orders ON orders.o_custkey = customer.c_custkey --joining orders and customer tables 
INNER JOIN customer ON customer.c_nationkey = nation.n_nationkey -- joining customer and nations tables
WHERE orders.o_orderdate = '1996-09-10' OR orders.o_orderdate = '1996-09-11' OR orders.o_orderdate = '1996-09-12'
group by n_name; --only diplaying the nations names 





