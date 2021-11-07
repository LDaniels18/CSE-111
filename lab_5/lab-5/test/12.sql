--test
select ps_supplycost from partsupp, part, lineitem
where p_retailprice < 1000 and substr('%Y', l_shipdate) is '1997'
