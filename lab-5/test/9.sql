--test -- DONE
 SELECT p_name 
 FROM part
 INNER JOIN supplier ON s_suppkey = ps_suppkey
 INNER JOIN partsupp ON ps_partkey = p_partkey
 INNER JOIN nation ON n_nationkey = s_nationkey
 where n_name IS 'UNITED STATES'
 ORDER BY (ps_supplycost * ps_availqty) DESC
 LIMIT (SELECT count(DISTINCT ps_partkey)/100 
 FROM partsupp
 INNER JOIN supplier ON s_suppkey = ps_suppkey
 INNER JOIN part ON p_partkey = ps_partkey
 INNER JOIN nation ON n_nationkey = s_nationkey
 WHERE n_name IS 'UNITED STATES');
