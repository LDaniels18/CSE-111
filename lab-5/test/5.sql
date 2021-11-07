--test

--For parts whose type contains STEEL, return the name of the supplier FROM ASIA that can supply them
--at minimum cost (ps supplycost), for every part size. Print the supplier name together with the part
--size and the minimum cost.


SELECT supplier.s_name, part.p_size, min(partsupp.ps_supplycost) 
FROM supplier
INNER JOIN partsupp ON ps_suppkey IS s_suppkey
INNER JOIN nation ON s_nationkey IS n_nationkey
INNER JOIN region ON n_regionkey IS r_regionkey
INNER JOIN part ON ps_partkey IS p_partkey
WHERE r_name IS 'ASIA' AND p_type LIKE '%STEEL%'
GROUP BY p_size
ORDER BY s_name, p_size;

