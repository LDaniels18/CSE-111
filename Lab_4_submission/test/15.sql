/*  How  many  distinct  orders  are  between  customers  with  positive  account  balance  and  suppliers  withnegative account balance? */
--Hint: an order can be composed of multiple lineitems
SELECT COUNT(DISTINCT orders.o_orderkey)
FROM orders
INNER JOIN customer ON orders.o_custkey = customer.c_custkey
INNER JOIN supplier ON lineitem.l_suppkey = supplier.s_suppkey
INNER JOIN lineitem ON orders.o_orderkey = lineitem.l_orderkey
WHERE( customer.c_acctbal > 0 AND supplier.s_acctbal < 0 ); 