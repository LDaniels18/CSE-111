--test DONE
SELECT supplyRegion.r_name as SupplyRegion, custreg.r_name as CustomerRegion, strftime('%Y', l_shipdate) as Data, SUM(l_extendedprice*(1-l_discount)) as Total
FROM lineitem, orders, customer, supplier, nation customerNation, region custreg,  nation supplyNation, region supplyRegion
WHERE l_orderkey = o_orderkey
AND o_custkey = c_custkey
AND c_nationkey = customerNation.n_nationkey
AND customerNation.n_regionkey = custreg.r_regionkey
AND l_suppkey = s_suppkey
AND s_nationkey = supplyNation.n_nationkey
AND supplyNation.n_regionkey = supplyRegion.r_regionkey
AND strftime('%Y', l_shipdate) between '1996' AND '1997'
GROUP BY supplyRegion.r_name, custreg.r_name, strftime('%Y', l_shipdate)
ORDER BY supplyRegion.r_name, custreg.r_name, strftime('%Y', l_shipdate);
