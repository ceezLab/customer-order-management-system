# customer-order-management-system
A simple SQL-based Customer Order Management System for small e-commerce businesses. This project includes database schema design, sample data, and queries for managing customers, products, orders, and generating sales reports.

Customer Order Management System

Overview

This project is a Customer Order Management System designed for small e-commerce businesses. It demonstrates how to use SQL to manage customer information, product inventory, and order records. The database includes functionality for generating reports such as sales analytics, customer order history, and inventory updates.

Features

Customer Management: Add and store customer details like name, email, and address.
Product Inventory: Track product details, prices, and stock quantities.
Order Tracking: Record orders made by customers, including order date, status, and quantity.
Reports and Analytics: Total sales by date, Customer order history, Inventory updates after processing orders.

Technologies Used
Database: MySQL
Tool: MySQL Workbench
Programming Concepts: SQL (DDL, DML, Aggregate Functions, JOINS)
Database Schema

Tables:
Customers: Stores customer details.
Products: Stores product details.
Orders: Records each order made by customers.
Schema Diagram:

How to Run the Project
Clone the repository:
bash

git clone https://github.com/your-username/customer-order-management-system.git
Open the project in MySQL Workbench.
Run the SQL script to create the database, tables, and insert sample data.
Test the included queries to generate reports and update inventory.
Queries Included
Total Sales by Date:

SELECT OrderDate, SUM(Quantity * Price) AS TotalSales
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY OrderDate
ORDER BY OrderDate;
Customer Order History:

SELECT o.OrderID, o.OrderDate, p.Name AS Product, o.Quantity, (o.Quantity * p.Price) AS TotalCost
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.CustomerID = 1;
Update Inventory:

UPDATE Products
SET StockQuantity = StockQuantity - 1
WHERE ProductID = 1;

Future Enhancements
Add a front-end interface using a web framework (e.g., Flask or Django).
Implement advanced sales analytics and trends.
Enable real-time updates for stock and order status.
