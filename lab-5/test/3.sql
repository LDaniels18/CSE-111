--test done

SELECT min(l_discount) 
FROM lineitem
INNER JOIN orders ON o_orderkey IS l_orderkey
WHERE(substr(o_orderdate, 1, 7) IS '1996-10' 
AND l_discount > (SELECT avg(l_discount) FROM lineitem
INNER JOIN orders ON o_orderkey IS l_orderkey));
