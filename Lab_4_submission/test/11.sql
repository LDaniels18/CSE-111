/*  Find the supplier with the largest account balance in every region.  
    Print the region name, the supplier name, and the account balance. */ 
SELECT r_name, s_name, m_acctbal
FROM supplier, nation, region,
     (SELECT r_name AS m_name, MAX(s_acctbal) AS m_acctbal 
      FROM supplier, nation, region 
      ON (s_nationkey = n_nationkey AND n_regionkey = r_regionkey) 
          GROUP BY r_name) 
          ON (s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = m_name AND s_acctbal = m_acctbal) 
      ORDER BY r_name;