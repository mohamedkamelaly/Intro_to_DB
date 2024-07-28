import mysql.connector
try:

    mydb = mysql.connector.connect(
        host = 'localhost',
        user = 'root',
        passwd = 'Nokia#2424',
        database = 'mysql'
    )
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
    print("Please Check credentials")

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
mycursor.close()
mydb.close()
