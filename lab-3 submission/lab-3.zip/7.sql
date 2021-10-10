-- SQLite
--.headers ON


--How many line items withlreceiptdatein1993didCustomer#000000010order? 
--Print the numberof ordered line items corresponding to every month.


--using strftime allows for us to extract times (like year and month)
SELECT strftime('%Y-%m', lineitem.l_receiptdate) AS time , count(lineitem.l_receiptdate)  AS count
FROM lineitem
INNER JOIN orders ON lineitem.l_orderkey = orders.o_orderkey --joining lineitem and orders
INNER JOIN customer ON customer.c_custkey = orders.o_custkey --joining customer and orders 
WHERE customer.c_custkey = '000000010' AND strftime('%Y', lineitem.l_receiptdate) = '1993' --checking for the right customer and the right year
GROUP BY strftime('%Y-%m', lineitem.l_receiptdate); --displaying the date in Year and Month format
