-- SQLite
--.headers ON

--What is the address, phone number, and account balance of Customer#000000010


SELECT DISTINCT c_address as '', c_phone as '', c_acctbal as ''
FROM customer 
WHERE customer.c_custkey = '000000010';