-- SQLite
--.headers ON

--Find the number of line items that have lshipdate smaller than lcommitdate.

SELECT count(l_quantity)
FROM lineitem
Where lineitem.l_shipdate < lineitem.l_commitdate;