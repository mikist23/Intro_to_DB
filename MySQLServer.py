import mysql.connector
import pymysql
from mysql.connector import errors

try:
        conn = pymysql.connect(
        host="localhost",
        user="root",
        password="@Mikist@23.@Mikist@23."
    )
except pymysql.MySQLError as err:
        print(f"Error: {err}")

cursor = conn.cursor()
cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print(f"Database 'alx_book_store' created successfully!") 
