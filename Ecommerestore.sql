

-- Step 1: Create Products Table
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2),
    InStock INT,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Step 2: Insert Data
INSERT INTO Products (ProductName, Price, InStock)
VALUES 
('TABLET', 2000.00, 20),
('Smartphone', 600.00, 25),
('ROUTER', 50.99, 50),
('Monitor', 600.00, 18),
('MICROPHONE USB', 45.50, 40);

-- Step 3: Run SQL Queries

-- 1. Display all data from the Products table
SELECT * FROM Products;

-- 2. Display only product names and prices
SELECT ProductName, Price FROM Products;

-- 3. Display products where the price is greater than 500
SELECT * FROM Products
WHERE Price > 500;

-- 4. Display products that have more than 20 items in stock
SELECT * FROM Products
WHERE InStock > 20;
