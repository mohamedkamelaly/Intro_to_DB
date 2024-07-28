import mysql.connector
try:

    mydb = mysql.connector.connect(
        host = 'localhost',
        user = 'root',
        passwd = 'Nokia#2424',
        database = 'mysql'
    )
    print("Database 'alx_book_store' created successfully!")
except:
    print("Please Check credentials")
