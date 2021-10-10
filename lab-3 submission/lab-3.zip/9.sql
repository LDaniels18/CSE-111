--Find the maximum account balance of the suppliers 
--from nations with more than 5 suppliers.  
--Printthe nation name, the number of suppliers from that nation, 
--and the maximum account balance.

SELECT n_name, count(supplier.s_nationkey) AS Count_Suppliers, 
max(supplier.s_acctbal) AS Max_Account_Bal 
FROM nation
INNER JOIN supplier ON nation.n_nationkey = supplier.s_nationkey --joining our two tables together
GROUP BY n_name 
HAVING count(supplier.s_nationkey) > 5; --the count must be greater than 5, 5 more suppliers
