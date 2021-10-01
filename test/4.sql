-- How  many  parts  with  size  below 20 does  every  supplier  from CANADA offer?   
-- Print  the  name  of  thesupplier and the number of parts.

SELECT s_name, count(p_type)
FROM part

