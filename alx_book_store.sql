 CREATE DATABASE IF NOT EXISTS alx_book_store
 USE alx_book_store;
 CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    Publication_data DATE,
    Foreign Key (author_id) REFERENCES Authors(author_id)
 )

 CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
 )

 CREATE Table IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
 )

 CREATE Table IF NOT EXISTS Orders(
    order_id PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
 )


CREATE Table IF NOT EXISTS Order_Details(
    orderdetail_id  PRIMARY KEY,
    order_id INT,
    book_id INT,
    Foreign Key (order_id) REFERENCES Orders(order_id),
    Foreign Key (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)