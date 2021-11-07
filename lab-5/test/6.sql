--test done
SELECT p_mfgr FROM part
INNER JOIN partsupp on ps_partkey IS p_partkey
INNER JOIN supplier on s_suppkey IS ps_suppkey
WHERE ps_availqty IS 
(SELECT min(ps_availqty) FROM partsupp
INNER JOIN supplier on s_suppkey IS ps_suppkey
WHERE s_name IS 'Supplier#000000010')
GROUP BY ps_availqty;