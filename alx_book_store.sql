
CREATE DATABASE IF NOT EXISTS alx_book_store

Books: Stores information about books available in the bookstore.
CREATE TABLE IF NOT EXISTS Books
book_id (Primary Key)
title VARCHAR(130)
author_id (Foreign Key referencing Authors table)
price DOUBLE
publication_date DATE

Authors: Stores information about authors.

CREATE TABLE IF NOT EXISTS Authors
author_id (Primary Key)
author_name VARCHAR(215)

Customers: Stores information about customers.
CREATE TABLE IF NOT EXISTS Customers
customer_id (Primary Key)
customer_name VARCHAR(215)
email VARCHAR(215)
address TEXT

Orders: Stores information about orders placed by customers.
CREATE TABLE IF NOT EXISTS Orders
order_id (Primary Key)
customer_id (Foreign Key referencing Customers table)
order_date DATE

Order_Details: Stores information about the books included in each order.
CREATE TABLE IF NOT EXISTS Order_Details
orderdetailid (Primary Key)
order_id (Foreign Key referencing Orders table)
book_id (Foreign Key referencing Books table)
quantity DOUBLE