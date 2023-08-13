-- USE OnlineBookStore;

 INSERT INTO Authors (Name, AuthorID, Country)
 VALUES
     ('J.K. Rowling', 11, 'United Kingdom'),
     ('Stephen King', 12, 'United States'),
     ('George R.R. Martin', 13, 'United States'),
     ('Agatha Christie', 14, 'United Kingdom'),
     ('Haruki Murakami', 15, 'Japan'),
     ('Jane Austen', 16, 'United Kingdom'),
     ('Leo Tolstoy', 17, 'Russia'),
     ('Ernest Hemingway', 18, 'United States'),
     ('Gabriel Garcia Marquez', 19, 'Colombia'),
     ('J.R.R. Tolkien', 20, 'United Kingdom');


 INSERT IGNORE INTO Publisher (Name, Address, PhoneNumber)
 VALUES
     ('Penguin Random House', '123 Book Avenue, New York', 9448349093),
     ('HarperCollins', '456 Story Lane, London', 8774330889),
     ('Simon & Schuster', '789 Novel Road, San Francisco', 7411752191),
     ('Macmillan Publishers', '321 Fiction Street, Boston', 9379808292),
     ('Hachette Book Group', '555 Literary Blvd, Paris', 7483999084),
     ('Scholastic Corporation', '888 Children Street, Chicago', 9449108065),
     ('Oxford University Press', '444 Academic Road, Oxford', 8861935956),
     ('Random House', '666 Mystery Lane, Sydney', 9686569530),
     ('Penguin Books', '111 Classic Avenue, Tokyo', 8088835503),
     ('Bantam Books', '999 Bestseller Road, Toronto', 9964729290);


 INSERT INTO Warehouses (Code, Address, PhoneNumber, Stock)
 VALUES
     (101, 'Warehouse One, New York', 9595838843, 1000),
     (102, 'Warehouse Two, London', 9344882269, 800),
     (103, 'Warehouse Three, San Francisco', 9502162210, 1200),
     (104, 'Warehouse Four, Boston', 8989898989, 600),
     (105, 'Warehouse Five, Paris', 7638228281, 1500),
     (106, 'Warehouse Six, Chicago', 9873553422, 700),
     (107, 'Warehouse Seven, Oxford', 9786722443, 900),
     (108, 'Warehouse Eight, Sydney', 8977292228, 500),
     (109, 'Warehouse Nine, Tokyo', 9634674869, 1000),
     (110, 'Warehouse Ten, Toronto', 9988013641, 1100);
    

 INSERT INTO Books (ISBN, AuthorName, BookName, PublisherName, DOP, Price, Stock, WareHouseCode)
 VALUES
     ('4930', 'J.K. Rowling', 'Harry Potter and the Philosopher''s Stone', 'Scholastic Corporation', '1997-06-26', 19.99, 1000, 101),
     ('9532', 'Stephen King', 'The Shining', 'Random House', '1977-01-28', 15.99, 800, 102),
     ('3540', 'George R.R. Martin', 'A Game of Thrones', 'Bantam Books', '1996-08-01', 24.99, 1200, 103),
     ('9278', 'Agatha Christie', 'Murder on the Orient Express', 'HarperCollins', '1934-01-01', 12.99, 600, 104),
     ('0958', 'Haruki Murakami', 'Kafka on the Shore', 'Penguin Books', '2002-09-12', 17.99, 1500, 105),
     ('9518', 'Jane Austen', 'Pride and Prejudice', 'Penguin Random House', '1813-01-28', 14.99, 700, 106),
     ('5008', 'Leo Tolstoy', 'War and Peace', 'Penguin Books', '1869-01-01', 21.99, 900, 107),
     ('1223', 'Ernest Hemingway', 'The Old Man and the Sea', 'Simon & Schuster', '1952-09-01', 11.99, 500, 108),
     ('3287', 'Gabriel Garcia Marquez', 'One Hundred Years of Solitude', 'HarperCollins', '1967-05-30', 16.49, 1000, 109),
     ('8227', 'J.R.R. Tolkien', 'The Hobbit', 'Hachette Book Group', '1937-09-21', 18.50, 1100, 110);



 INSERT INTO Customer (ID, OrderID, Name, Email, Address, PhoneNumber)
 VALUES
     (101, 1001, 'John Smith', 'john.smith@email.com', '123 Main Street, City A', 9569838843),
     (102, 1002, 'Emma Johnson', 'emma.johnson@email.com', '456 Oak Avenue, City B', 8086935503),
     (103, 1003, 'Michael Brown', 'michael.brown@email.com', '789 Elm Road, City C', 9697569530),
     (104, 1004, 'Sophia Davis', 'sophia.davis@email.com', '321 Maple Lane, City D', 9732722693),
     (105, 1005, 'Daniel Wilson', 'daniel.wilson@email.com', '555 Pine Boulevard, City E', 9873697422),
     (106, 1006, 'Olivia Anderson', 'olivia.anderson@email.com', '888 Cedar Lane, City F', 7645698288),
     (107, 1007, 'Noah Martinez', 'noah.martinez@email.com', '444 Oak Street, City G', 9989898988),
     (108, 1008, 'Ava Lopez', 'ava.lopez@email.com', '666 Elm Road, City H', 9502692210),
     (109, 1009, 'James Moore', 'james.moore@email.com', '111 Maple Lane, City I', 9595869843),
     (110, 1010, 'Isabella Taylor', 'isabella.taylor@email.com', '999 Pine Avenue, City J', 9695838843);


 INSERT INTO ShoppingCart (BookISBN, Quantity, CustomerID, OrderID)
 VALUES
     ('4930', 2, 101, 1001),
     ('3540', 1, 101, 1002),
     ('0958', 3, 102, 1004),
     ('9518', 1, 103, 1003),
     ('1223', 2, 103, 1005),
     ('9532', 1, 104, 1006),
     ('5008', 2, 105, 1008),
     ('3287', 1, 105, 1007),
     ('9278', 3, 106, 1010),
     ('8227', 1, 106, 1009);
