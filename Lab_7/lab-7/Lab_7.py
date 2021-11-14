import sqlite3
from sqlite3 import Error


def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")


def createTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Create table")

     try:
        sql = """create table warehouse(
                    w_warehousekey decimal(9,0) not null,
                    w_name char(100) not null,
                    w_capacity decimal(6,0) not null,
                    w_suppkey decimal(9,0) not null,
                    w_nationkey decimal(2,0) not null)"""
       _conn.execute(sql)

       _conn.commit()
        print("success")
    print("++++++++++++++++++++++++++++++++++")


def dropTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Drop tables")

    print("++++++++++++++++++++++++++++++++++")


def populateTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Populate table")

    print("++++++++++++++++++++++++++++++++++")


def Q1(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q1")

    print("++++++++++++++++++++++++++++++++++")


def Q2(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q2")

    print("++++++++++++++++++++++++++++++++++")


def Q3(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q3")

    print("++++++++++++++++++++++++++++++++++")


def Q4(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q4")

    print("++++++++++++++++++++++++++++++++++")


def Q5(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q5")

    print("++++++++++++++++++++++++++++++++++")


def main():
    database = r"tpch.sqlite"

    # create a database connection
    conn = openConnection(database)
    with conn:
        dropTable(conn)
        createTable(conn)
        populateTable(conn)

        Q1(conn)
        Q2(conn)
        Q3(conn)
        Q4(conn)
        Q5(conn)

    closeConnection(conn, database)


# if __name__ == '__main__':
#     main()

# import sqlite3
# from sqlite3 import Error

# def openConnection(_dbFile):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Open database: ", _dbFile)

#     connection = None
#     try:
#         connection = sqlite3.connect(_dbFile)
#         print("success")
#     except Error as e:
#         print(e)

#     print("++++++++++++++++++++++++++++++++++")

#     return connection


# def closeConnection(_connection, _dbFile):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Close database: ", _dbFile)

#     try:
#        _conn.close()
#         print("success")
#     except Error as e:
#         print(e)

#     print("++++++++++++++++++++++++++++++++++")


# def createTable(_connection):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Create table")
#     try:
#         sql = """create table warehouse(
#                     w_warehousekey decimal(9,0) not null,
#                     w_name char(100) not null,
#                     w_capacity decimal(6,0) not null,
#                     w_suppkey decimal(9,0) not null,
#                     w_nationkey decimal(2,0) not null)"""
#        _conn.execute(sql)

#        _conn.commit()
#         print("success")
#     except Error as e:
#        _conn.rollback()
#         print(e)

#     print("++++++++++++++++++++++++++++++++++")


# def dropTable(_connection):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Drop tables")

#     try:
#         sql = "drop table warehouse"
#        _conn.execute(sql)

#        _conn.commit()
#         print("success")
#     except Error as e:
#        _conn.rollback()
#         print(e)

#     print("++++++++++++++++++++++++++++++++++")


# def populateTable(_connection):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Populate table")
#     i = 1
#     id = 1
#     tmpTable = {'w_warehousekey': 1, 'w_name': 'tmp1',
#                          'w_capacity': 1, 'w_suppkey': 1, 'w_nationkey': 1}
#     listTable = []
#     listCap = []
#     tmpList = []
#     try:

#         idSql = """select s_name from supplier"""
#         cur =_conn.cursor()
#         cur.execute(idSql)
#         rows = cur.fetchall()

#         for row in rows:
#             tmpTable.update({"w_warehousekey": i, 'w_suppkey': id})
#             tmpTable_copy = tmpTable.copy()
#             listTable.append(tmpTable_copy)
#             i += 1
#             tmpTable.update({"w_warehousekey": i, 'w_suppkey': id})
#             tmpTable_copy = tmpTable.copy()
#             listTable.append(tmpTable_copy)

#             i += 1
#             id += 1

#         id = 0
#         for row in rows:
#             nameSql = """select n_name, count(l_linenumber) as totalNum, n_nationkey from lineitem
#                         inner join customer on c_custkey = o_custkey
#                         inner join orders on o_orderkey = l_orderkey
#                         inner join supplier on s_suppkey = l_suppkey
#                         inner join nation on n_nationkey = c_nationkey 
#                         where s_name = '{}'
#                         group by n_name
#                         order by totalNum desc, n_name asc
#                         limit 2""".format(row[0])
#             cur2 =_conn.cursor()
#             cur2.execute(nameSql)
#             rows2 = cur2.fetchall()
#             for row2 in rows2:
#                 listTable[id].update(
#                     {'w_name': row[0] + '___' + row2[0], 'w_nationkey': row2[2]})
#                 tmpList.append(id)
#                 id += 1
#         for row in rows:
#             capacitySql = """with nTotal as(
#                             select n_name,  s_name, sum(p_size) as totalSize from lineitem
#                             inner join nation on c_nationkey = n_nationkey
#                             inner join customer on c_custkey = o_custkey
#                             inner join orders on o_orderkey = l_orderkey
#                             inner join supplier on s_suppkey = l_suppkey
#                             inner join part on p_partkey = l_partkey 
#                             where s_name = '{}'
#                             group by n_name, s_name)
#                             select max(nTotal.totalSize) * 2 as DoubleMaxTotalPartSize from nTotal;""".format(row[0])
#             cur3 =_conn.cursor()
#             cur3.execute(capacitySql)
#             rows3 = cur3.fetchall()
#             for row3 in rows3:
#                 listCap.append(row3[0])

#         id = 0
#         for x in listCap:
#             listTable[id].update({'w_capacity': x})
#             listTable[id+1].update({'w_capacity': x})
#             id = id + 2

#         for x in tmpList:
#             sql = "insert into warehouse values(?,?,?,?,?)"
#             args = [listTable[x]['w_warehousekey'], listTable[x]['w_name'],
#                     listTable[x]['w_capacity'], listTable[x]['w_suppkey'], listTable[x]['w_nationkey']]
#            _conn.execute(sql, args)

#        _conn.commit()
#         print("success")
#     except Error as e:
#        _conn.rollback()
#         print(e)

#     print("++++++++++++++++++++++++++++++++++")
