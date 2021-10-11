--test - DONE
SELECT o_orderpriority, count(DISTINCT o_orderkey)
FROM orders
INNER JOIN lineitem ON l_orderkey = o_orderkey
INNER JOIN customer ON c_custkey = o_custkey
WHERE ((strftime('%m', o_orderdate) + 2)/ 3) = 4 AND strftime('%Y', o_orderdate) is '1997' and strftime('%Y-%m-%d', l_commitdate) > strftime('%Y-%m-%d', l_receiptdate)
GROUP BY o_orderpriority;

