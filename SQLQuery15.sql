CREATE DATABASE SampleDB;
USE SampleDB;
-- Create a Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Create an Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert sample data into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com');

-- Insert sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1001, 1, '2023-10-28', 250.50),
    (1002, 2, '2023-10-29', 175.25);
-- Retrieve all customers
SELECT * FROM Customers;

-- Retrieve all orders
SELECT * FROM Orders;

mysqldump - username -p SampleDB > SampleDB.sql
