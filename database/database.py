import sqlite3
import os

# os.chdir(os.path.dirname(os.path.abspath(__file__)))
pathToQuestions = './database/questions.db'

def getQuestion(number):
    numberOfColums = 7
    try:
        conn = sqlite3.connect(pathToQuestions)
        c = conn.cursor()
        print("connected to SQLLite")

        sql_select_query = """Select * from Scala where Number = ?""" #fix table as input
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
        conn = sqlite3.connect(pathToQuestions)
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

def getNumberOfQuestions(course):
    try:
        conn = sqlite3.connect(pathToQuestions)
        c = conn.cursor()
        print("connected to SQLLite")
        sql_select_query = """Select * from {}""".format(course) #Need this format for not risking sql injections
        c.execute(sql_select_query)
        records = c.fetchall()
        return len(records)

    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
        return 0;

    finally:
        if (conn):
            conn.close()
            print("The SQLite connection is closed")

print(getQuestion(str(1)))
# We can also close the connection if we are done with it.
# Just be sure any changes have been committed or they will be lost.
