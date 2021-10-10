-- SQLite
--.headers ON

--What is the minimum,  maximum,  and total account balance among the customers in every market segment?
SELECT c_mktsegment, min(c_acctbal), max(c_acctbal), Sum(c_acctbal)
FROM customer
WHERE customer.c_mktsegment = 'AUTOMOBILE' 
UNION
SELECT c_mktsegment, min(c_acctbal), max(c_acctbal), Sum(c_acctbal)
FROM customer
WHERE customer.c_mktsegment = 'BUILDING' 
UNION
SELECT c_mktsegment, min(c_acctbal), max(c_acctbal), Sum(c_acctbal)
FROM customer
WHERE customer.c_mktsegment = 'FURNITURE' 
UNION
SELECT c_mktsegment, min(c_acctbal), max(c_acctbal), Sum(c_acctbal)
FROM customer
WHERE customer.c_mktsegment = 'HOUSEHOLD' 
UNION
SELECT c_mktsegment, min(c_acctbal), max(c_acctbal), Sum(c_acctbal)
FROM customer
WHERE customer.c_mktsegment = 'MACHINERY';

