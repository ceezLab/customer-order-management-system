USE ecommerce_system;

-- Disable foreign key checks to ensure smooth table drops
SET FOREIGN_KEY_CHECKS = 0;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insert sample data into Customers
INSERT INTO Customers (Name, Email, Address)
VALUES
('Alice Smith', 'alice@example.com', '123 Main St'),
('John Doe', 'john.doe@example.com', '456 Oak Ave');

-- Insert sample data into Products
INSERT INTO Products (Name, Description, Price, StockQuantity)
VALUES
('Laptop', 'High-performance laptop', 999.99, 50),
('Smartphone', 'Latest model smartphone', 799.99, 100);

-- Insert sample data into Orders
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate, Status)
VALUES
(1, 1, 1, '2025-01-01', 'Processing'),
(2, 2, 2, '2025-01-02', 'Shipped');
