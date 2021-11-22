--I used the Result as a refernce to drop and create the indexes... literally all based off the provided result
--each grouping represents the numbered query (I just didnt want to write out so many comments) 
-- For some reason this didnt run on my linux machine but will all pass on mac, so im confident it will all pass:

DROP INDEX IF EXISTS customer_idx_c_name;
CREATE INDEX customer_idx_c_name ON customer(c_name);

DROP INDEX IF EXISTS supplier_idx_s_nationkey_s_acctbal;
CREATE INDEX supplier_idx_s_nationkey_s_acctbal ON supplier(s_nationkey, s_acctbal);
DROP INDEX IF EXISTS lineitem_idx_l_returnflag_l_receiptdate;
CREATE INDEX lineitem_idx_l_returnflag_l_receiptdate ON lineitem(l_returnflag,l_receiptdate);

DROP INDEX IF EXISTS customer_idx_c_mktsegment;
CREATE INDEX customer_idx_c_mktsegment ON customer(c_mktsegment);

DROP INDEX IF EXISTS orders_idx_o_orderdate;
DROP INDEX IF EXISTS customer_idx_c_custkey;
DROP INDEX IF EXISTS nation_idx_n_nationkey_n_name;
CREATE INDEX orders_idx_o_orderdate ON orders(o_orderdate);
CREATE INDEX customer_idx_c_custkey ON customer(c_custkey);
CREATE INDEX nation_idx_n_nationkey_n_name ON nation(n_nationkey, n_name);

DROP INDEX IF EXISTS customer_idx_c_name_c_custkey;
DROP INDEX IF EXISTS orders_idx_o_custkey_o_orderkey;
DROP INDEX IF EXISTS lineitem_idx_l_orderkey_l_suppkey;
CREATE INDEX customer_idx_c_name_c_custkey ON customer(c_name, c_custkey);
CREATE INDEX orders_idx_o_custkey_o_orderkey ON orders(o_custkey, o_orderkey);
CREATE INDEX lineitem_idx_l_orderkey_l_suppkey ON lineitem(l_orderkey, l_suppkey);

DROP INDEX IF EXISTS region_idx_r_name_r_regionkey;
DROP INDEX IF EXISTS nation_idx_n_regionkey_n_nationkey; 
DROP INDEX IF EXISTS supplier_idx_s_nationkey_s_acctbal;
CREATE INDEX region_idx_r_name_r_regionkey ON region(r_name,r_regionkey);
CREATE INDEX nation_idx_n_regionkey_n_nationkey ON nation(n_regionkey,n_name,n_nationkey);
CREATE INDEX supplier_idx_s_nationkey_s_acctbal ON supplier(s_nationkey, s_acctbal);

DROP INDEX IF EXISTS supplier_idx_s_nationkey_s_acctbal;
CREATE INDEX supplier_idx_s_nationkey_s_acctbal ON supplier(s_nationkey, s_acctbal);

DROP INDEX IF EXISTS region_idx_r_name_r_regionkey;
DROP INDEX IF EXISTS nation_idx_n_regionkey_n_nationkey;
DROP INDEX IF EXISTS customer_idx_c_nationkey_c_custkey;
DROP INDEX IF EXISTS orders_idx_o_custkey_o_orderdate;
CREATE INDEX region_idx_r_name_r_regionkey ON region(r_name,r_regionkey);
CREATE INDEX nation_idx_n_regionkey_n_nationkey ON nation(n_regionkey, n_nationkey);
CREATE INDEX customer_idx_c_nationkey_c_custkey ON customer(c_nationkey, c_custkey);
CREATE INDEX orders_idx_o_custkey_o_orderdate ON orders(o_custkey, o_orderdate);

DROP INDEX IF EXISTS lineitem_idx_l_discount; 
DROP INDEX IF EXISTS orders_idx_o_orderkey;
CREATE INDEX lineitem_idx_l_discount ON lineitem(l_discount);
CREATE INDEX orders_idx_o_orderkey ON orders(o_orderkey);

DROP INDEX IF EXISTS orders_idx_o_orderstatus;
DROP INDEX IF EXISTS customer_idx_c_custkey; 
DROP INDEX IF EXISTS nation_idx_n_nationkey_n_name;
DROP INDEX IF EXISTS region_idx_r_regionkey_r_name;
CREATE INDEX orders_idx_o_orderstatus ON orders(o_orderstatus);
CREATE INDEX customer_idx_c_custkey ON customer(c_custkey);
CREATE INDEX nation_idx_n_nationkey_n_name ON nation(n_nationkey, n_name);
CREATE INDEX region_idx_r_regionkey_r_name ON region(r_regionkey, r_name); 

DROP INDEX IF EXISTS customer_idx_c_mktsegment;
DROP INDEX IF EXISTS region_idx_r_name_r_regionkey;
DROP INDEX IF EXISTS nation_idx_n_regionkey_n_nationkey;
CREATE INDEX customer_idx_c_mktsegment ON customer(c_mktsegment);
CREATE INDEX region_idx_r_name_r_regionkey ON region(r_name, r_regionkey);
CREATE INDEX nation_idx_n_regionkey_n_nationkey ON nation(n_regionkey, n_nationkey);

DROP INDEX IF EXISTS orders_idx_o_orderpriority_o_orderdate;
DROP INDEX IF EXISTS nation_idx_n_name;
DROP INDEX IF EXISTS customer_idx_c_nationkey_c_custkey;
CREATE INDEX orders_idx_o_orderpriority_o_orderdate ON orders(o_orderpriority,o_orderdate);
CREATE INDEX nation_idx_n_name ON nation(n_name);
CREATE INDEX customer_idx_c_nationkey_c_custkey ON customer(c_nationkey, c_custkey);

DROP INDEX IF EXISTS orders_idx_o_orderpriority_o_orderkey;
DROP INDEX IF EXISTS nation_idx_n_name;
DROP INDEX IF EXISTS supplier_idx_s_nationkey_s_suppkey;
DROP INDEX IF EXISTS lineitem_idx_l_orderkey_l_suppkey;
CREATE INDEX orders_idx_o_orderpriority_o_orderkey ON orders(o_orderpriority,o_orderkey);
CREATE INDEX nation_idx_n_name ON nation(n_name);
CREATE INDEX supplier_idx_s_nationkey_s_suppkey ON supplier(s_nationkey, s_suppkey);
CREATE INDEX lineitem_idx_l_orderkey_l_suppkey ON lineitem(l_orderkey,l_suppkey);

