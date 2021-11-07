--test

--For parts whose type contains STEEL, return the name of the supplier from ASIA that can supply them
--at minimum cost (ps supplycost), for every part size. Print the supplier name together with the part
--size and the minimum cost.


select  supplier.s_name, part.p_size, min(partsupp.ps_supplycost) 
from supplier
inner join partsupp on ps_suppkey is s_suppkey
inner join nation on s_nationkey is n_nationkey
inner join region on n_regionkey is r_regionkey
inner join part on ps_partkey is p_partkey
where r_name is 'ASIA' and p_type like '%STEEL%'
group by p_size
order by s_name, p_size;

---------------------------------------------------------------
--test code:
SELECT
supplier.s_name, part.p_size, min(partsupp.ps_supplycost)
FROM
supplier
INNER JOIN partsupp ON partsupp.ps_suppkey = supplier.s_suppkey
INNER JOIN nation ON supplier.s_nationkey = nation.n_nationkey
INNER JOIN region ON nation.n_regionkey = region.r_regionkey
INNER JOIN part ON partsupp.ps_partkey = part.p_partkey
WHERE (
    region.r_name = "ASIA" AND
    part.p_type LIKE "%STEEL%"
)
GROUP BY part.p_size;