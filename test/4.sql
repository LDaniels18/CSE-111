-- How  many  parts  with  size  below 20 does  every  supplier  from CANADA offer?   
-- Print  the  name  of  thesupplier and the number of parts.
select s_name, count(p_partkey) from nation
inner join part on p_partkey is ps_partkey
inner join partsupp on ps_suppkey is s_suppkey
inner join supplier on s_nationkey is n_nationkey
where p_size < 20 and n_name is 'CANADA'
group by s_name;