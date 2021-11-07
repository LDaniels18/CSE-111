--test done
select count(distinct s_name) from supplier
INNER JOIN partsupp ON s_suppkey = ps_suppkey
INNER JOIN part ON p_partkey = ps_partkey
where p_type like '%POLISHED%' and p_size in (3, 23, 36, 49);
--GROUP BY s_name;
