--test DONE
SELECT r_name as regions, count(DISTINCT c_name) AS count
FROM customer orders
Inner JOIN nation ON n_nationkey IS c_nationkey
Inner JOIN region ON r_regionkey IS n_regionkey
where c_acctbal < (SELECT avg(c_acctbal) FROM customer) AND NOT c_custkey IN (SELECT o_custkey FROM orders)
group by r_name;

