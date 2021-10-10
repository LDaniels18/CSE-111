--Find the name of the suppliers from AMERICA 
--who have more than $5000 on account balance.  
--Printthe supplier name and their account balance.

--GO BACK to NUMBER 5 and 6 its similar:

SELECT s_name AS Suppliers, s_acctbal AS Suppliers_Ballance
FROM supplier
INNER JOIN nation ON supplier.s_nationkey = nation.n_nationkey --joining the supplier and nation tables
INNER JOIN region ON nation.n_regionkey = region.r_regionkey
WHERE region.r_name = 'AMERICA' AND supplier.s_acctbal > 5000 --checking for the value to be over 5000
ORDER BY s_name; --to display the names if the suppliers
