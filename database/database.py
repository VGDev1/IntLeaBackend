import sqlite3
import os

def get_question(number):
    numberOfColums = 7
    try:
        conn = sqlite3.connect('questions.db')
        c = conn.cursor()
        print("connected to SQLLite")

        sql_select_query = """Select * from Java where Number = ?"""
        c.execute(sql_select_query, (number, ))
        records = c.fetchall()
        list = []
        for row in records:
            for i in range(0,numberOfColums):
                list.append([row[i]])
        c.close()
        if(list == []):
            return 0
        else:
            return list

    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
        return 0;

    finally:
        if (conn):
            conn.close()
            print("The SQLite connection is closed")


def authentication(classCode):
    numberOfColums = 1
    try:
        conn = sqlite3.connect('questions.db')
        c = conn.cursor()
        print("connected to SQLLite")

        sql_select_query = """Select * from Users where ClassCode = ?"""
        c.execute(sql_select_query, (classCode, ))
        records = c.fetchall()
        print(records)
        list = []
        for row in records:
            for i in range(0,numberOfColums):
                list.append([row[i]])
        c.close()
        if(list == []):
            return "invalid code"
        else:
            return "succes"

    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
        return 0;

    finally:
        if (conn):
            conn.close()
            print("The SQLite connection is closed")


print(get_question("1"))
print(authentication("ABC123"))

# We can also close the connection if we are done with it.
# Just be sure any changes have been committed or they will be lost.
