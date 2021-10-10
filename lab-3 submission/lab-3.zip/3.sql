-- SQLite
--.headers ON

--Find all the line items with the return flag set toRon the receipt date ofAugust 22, 1993.  Print lreceiptdate, l returnflag,lextendedprice, and ltax for every line item.

SELECT l_receiptdate, l_returnflag, l_extendedprice, l_tax
FROM lineitem
WHERE lineitem.l_returnflag = 'R' AND lineitem.l_receiptdate = '1993-08-22';
