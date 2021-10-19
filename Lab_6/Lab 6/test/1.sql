SELECT strftime("%m", lineitem.l_shipdate) AS month, sum(lineitem.l_quantity) AS quantity 
FROM lineitem 
WHERE strftime("%Y", lineitem.l_shipdate) = "1995"
GROUP BY month;
