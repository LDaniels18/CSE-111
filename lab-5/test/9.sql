--test -- need to finish
 select p_name from part
 inner join supplier on s_suppkey = ps_suppkey
 inner join partsupp on ps_partkey = p_partkey
 INNER JOIN nation on n_nationkey = s_nationkey
 where n_name is 'UNITED STATES'
 





 group by p_name
 HAVING (ps_supplycost * ps_availqty) 
 limit 1;


 select p_name 
 from part
 LIMIT 1;
 
 


select Sum(ps_supplycost * ps_availqty) as total, p_name
from partsupp
inner join part on ps_partkey is p_partkey
inner join supplier on s_suppkey = ps_suppkey
inner join nation on n_nationkey = s_nationkey
where n_name is 'UNITED STATES'
Group BY p_name;
--HAVING total
--limit 1;