CREATE DATABASE OnlineBookStore;

USE OnlineBookStore;

CREATE TABLE IF NOT EXISTS Authors (
    Name VARCHAR(25),
    AuthorID INT,
    Country CHAR(15),
    PRIMARY KEY (Name, AuthorID)
);

CREATE TABLE IF NOT EXISTS Publisher (
    Name VARCHAR(25) PRIMARY KEY,
    Address VARCHAR(40),
    PhoneNumber INT,
    CHECK (PhoneNumber BETWEEN 5555555555 AND 9999999999)
);

CREATE TABLE IF NOT EXISTS Warehouses (
    Code INT,
    Address VARCHAR(50),
    PhoneNumber INT,
    Stock INT,
    PRIMARY KEY (Code, Stock),
    CHECK (PhoneNumber BETWEEN 5555555555 AND 9999999999)
);

CREATE TABLE IF NOT EXISTS Books (
    ISBN INT PRIMARY KEY,
    AuthorName VARCHAR(25),
    BookName VARCHAR(30),
    PublisherName VARCHAR(25),
    DOP DATE,
    Price FLOAT,
    Stock INT,
    WareHouseCode INT,
    FOREIGN KEY (AuthorName) REFERENCES Authors(Name),
    FOREIGN KEY (PublisherName) REFERENCES Publisher(Name),
    FOREIGN KEY (WareHouseCode, Stock) REFERENCES Warehouses(Code, Stock)
);

CREATE TABLE IF NOT EXISTS Customer (
    ID INT PRIMARY KEY,
    OrderID INT,
    Name VARCHAR(20),
    Email VARCHAR(30),
    Address VARCHAR(50),
    PhoneNumber INT,
    CHECK (PhoneNumber BETWEEN 5555555555 AND 9999999999),
    FOREIGN KEY (OrderID) REFERENCES ShoppingCart(OrderID)
);

CREATE TABLE IF NOT EXISTS ShoppingCart (
    BookISBN INT,
    Quantity INT,
    CustomerID INT,
    OrderID INT PRIMARY KEY,
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
    FOREIGN KEY (BookISBN) REFERENCES Books(ISBN)
);



