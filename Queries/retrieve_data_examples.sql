-- Find authors from a specific country:
SELECT * FROM Authors WHERE Country = 'United States';

-- Get the number of books written by each author:
 SELECT a.Name AS AuthorName, COUNT(b.ISBN) AS NumberOfBooks
 FROM Authors a
 LEFT JOIN Books b ON a.Name = b.AuthorName
 GROUP BY a.Name;

-- Get author details for a specific book:
SELECT a.* FROM Authors a
INNER JOIN Books b ON a.Name = b.AuthorName
WHERE b.BookName = 'Harry Potter and the Philosopher''s Stone';

-- Find publishers based on their phone number range:
SELECT * FROM Publisher WHERE PhoneNumber BETWEEN 6666666666 AND 8888888888;

-- Get the total number of books published by each publisher:
SELECT p.Name AS PublisherName, COUNT(b.ISBN) AS NumberOfBooks
FROM Publisher p
LEFT JOIN Books b ON p.Name = b.PublisherName
GROUP BY p.Name; 

-- Get publisher details for a specific book:
SELECT p.* FROM Publisher p
INNER JOIN Books b ON p.Name = b.PublisherName
WHERE b.BookName = 'The Hobbit';

-- Find warehouses with stock greater than a certain value:
SELECT * FROM Warehouses WHERE Stock > 500;

-- Get the total stock for each warehouse:
SELECT Code, Address, SUM(Stock) AS TotalStock
FROM Warehouses
GROUP BY Code, Address;

-- Get warehouse details for a specific book:
SELECT w.* FROM Warehouses w
INNER JOIN Books b ON w.Code = b.WareHouseCode AND w.Stock = b.Stock
WHERE b.BookName = 'War and Peace'; 

-- Find books based on their price range:
SELECT * FROM Books WHERE Price BETWEEN 15.00 AND 20.00;

-- Get the latest books published:
SELECT * FROM Books ORDER BY DOP DESC LIMIT 5;

-- Get books published by a specific publisher:
SELECT * FROM Books WHERE PublisherName = 'HarperCollins';

-- Find customers from a specific city:
SELECT * FROM Customer WHERE Address LIKE '%Lane%';

-- Get the total number of orders placed by each customer:
SELECT c.Name, COUNT(sc.OrderID) AS NumberOfOrders
FROM Customer c
LEFT JOIN ShoppingCart sc ON c.ID = sc.CustomerID
GROUP BY c.Name;

-- Get the details of a specific customer's order:
SELECT c.Name AS CustomerName, b.BookName, sc.Quantity, b.Price, (sc.Quantity * b.Price) AS TotalPrice
FROM Customer c
INNER JOIN ShoppingCart sc ON c.ID = sc.CustomerID
INNER JOIN Books b ON sc.BookISBN = b.ISBN
WHERE c.Name = 'John Smith';

-- Get the total amount spent by each customer:
SELECT c.Name, SUM(sc.Quantity * b.Price) AS TotalAmountSpent
FROM Customer c
INNER JOIN ShoppingCart sc ON c.ID = sc.CustomerID
INNER JOIN Books b ON sc.BookISBN = b.ISBN
GROUP BY c.Name;

-- Find customers who have not placed any orders:
SELECT *
FROM Customer
WHERE ID NOT IN (SELECT DISTINCT CustomerID FROM ShoppingCart);

-- Find customers who have placed orders with a total quantity greater than or equal to 3:
SELECT CustomerID, SUM(Quantity) AS TotalQuantity
FROM ShoppingCart
GROUP BY CustomerID
HAVING SUM(Quantity) >= 3;

-- get the minimum, maximum and average price of books
SELECT
    MIN(Price) AS MinPrice,
    MAX(Price) AS MaxPrice,
    AVG(Price) AS AvgPrice
FROM Books;





