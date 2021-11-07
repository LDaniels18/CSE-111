--test - done

SELECT count(c_custkey) FROM customer
INNER JOIN region ON r_regionkey IS n_regionkey
INNER JOIN nation ON n_nationkey IS c_nationkey
where r_name IS NOT 'EUROPE'
AND r_name IS NOT 'AFRICA'
AND r_name IS NOT 'ASIA';
