SHOW DATABASES

CREATE DATABASE bms

USE DATABASE bms

CREATE TABLE Author(
    AuthorID INT(10) NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    PRIMARY KEY (AuthorID)
)

CREATE TABLE Book(
    BookID INT(10) NOT NULL AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT(10) NOT NULL,
    CategoryID INT(10) NOT NULL,
    ISBN VARCHAR (255) NOT NULL,
    PublishDate DATE NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (BookID),
    FOREIGN KEY AuthorID REFERENCES Author(AuthorID),
    FOREIGN KEY CategoryID REFERENCES Category(CategoryID)
)

CREATE TABLE Category(
    CategoryID INT(10) NOT NULL AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL
)

INSERT INTO Author (FirstName, LastName)
VALUES 
('George', 'Orwell'),
('J.K', 'Rowling'),
('Harper', 'Lee'),
('J.R.R', 'Tolkien'),
('F. Scott', 'Fitzgerald')

SELECT * FROM Author

INSERT INTO Category (CategoryName)
VALUES
('Fantasy'),
('Mystery'),
('Romance'),
('Thriller'),
('Non-Fiction'),
('Biography'),
('Self-Help'),
('Historical Fiction');

SELECT * FROM Category

INSERT INTO Book (Title, AuthorID, CategoryID, ISBN, PublishDate, Price)
VALUES
('Brave New World', 1, 2, '978-0060850524', '1932-08-01', 11.99),
('Harry Potter and the Chamber of Secrets', 2, 1, '978-0439708180', '1998-07-02', 16.99),
('Go Set a Watchman', 3, 1, '978-0062409850', '2015-07-14', 18.99),
('The Fellowship of the Ring', 4, 2, '978-0618574940', '1954-07-29', 13.99),
('This Side of Paradise', 5, 1, '978-0743273886', '1920-02-01', 17.99),
('The Catcher in the Rye', 3, 1, '978-0316769488', '1951-07-16', 9.99),
('The Da Vinci Code', 1, 5, '978-0307474278', '2003-03-18', 12.99),
('The Girl with the Dragon Tattoo', 4, 5, '978-0307454546', '2005-08-01', 14.99),
('The Hunger Games', 2, 3, '978-0439023528', '2008-09-14', 10.99),
('Pride and Prejudice', 3, 6, '978-0141439518', '1813-01-28', 8.99),
('A Brief History of Time', 1, 7, '978-0553380163', '1988-04-01', 15.99),
('Becoming', 2, 6, '978-1524763138', '2018-11-13', 20.99),
('The Silent Patient', 4, 4, '978-1250301697', '2019-02-05', 16.99),
('The Night Circus', 1, 4, '978-0307744432', '2011-09-13', 14.99),
('Educated', 2, 7, '978-0399590504', '2018-02-20', 13.99);


SELECT * FROM Book
