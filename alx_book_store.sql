CREATE DATABASE alx_book_store;

mysql - u root - p mydatabase USE mydatabase;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id VARCHAR(100),
    price DOUBLE,
    publication_date DATE,
);
CREATE Table Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE Table Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE Table Orders(
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN,
    order_date DATE
);
CREATE Table Order_Details(
    orderdetailid INT PRIMARY KEY,
    order_id INT FOREIGN,
    book_id INT FOREIGN,
    quantity DOUBLE
);