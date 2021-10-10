-- SQLite
--.headers ON
--What is the smallest account balance of a supplier?


--SELECT DISTINCT s_acctbal 
--FROM supplier
--group by s_acctbal 
--HAVING min(supplier.s_acctbal);

SELECT min(s_acctbal)
FROM supplier;