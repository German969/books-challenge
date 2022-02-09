CREATE TABLE Authors (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Authors
    (Name, Country)
VALUES
    ('J.D. Salinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Jason N. Gaylord', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA')
;

CREATE TABLE Books (
    Id INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Books
    (Id, Title)
VALUES
    (1, 'The Catcher in the Rye'),
    (2, 'Nine Stories'),
    (3, 'Franny and Zooey'),
    (4, 'The Great Gatsby'),
    (5, 'Tender id the Night'),
    (6, 'Pride and Prejudice'),
    (7, 'Professional ASP.NET 4.5 in C# and VB')
;

CREATE TABLE BooksAuthors (
    Id INT NOT NULL AUTO_INCREMENT,
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id),
    PRIMARY KEY(Id)
);

INSERT INTO BooksAuthors
    (BookId, AuthorId)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8)
;

CREATE TABLE Categories (
    Id INT NOT NULL AUTO_INCREMENT,
    Category VARCHAR(70),
    PRIMARY KEY(Id)
);

INSERT INTO Categories
    (Category)
VALUES
    ('Standard'),
    ('Admin')
;

CREATE TABLE Users (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Pass VARCHAR(100),
    CategoryId INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

INSERT INTO Users
    (Name, Country, Pass, CategoryId)
VALUES
    ('Cynthia Bowman', 'USA', '1234', 2),
    ('Hanley Rios', 'USA', '1234', 1),
    ('Rowena Twitty', 'USA', '1234', 3),
    ('Fabian Webster', 'India', '1234', 1),
    ('Harper Mann', 'USA', '1234', 2),
    ('Christian Wenz', 'USA', '1234', 2)
;