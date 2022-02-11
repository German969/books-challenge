CREATE DATABASE library;

USE library;

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
    Cover VARCHAR(200),
    PRIMARY KEY(Id)
);

INSERT INTO Books
    (Id, Title, Cover)
VALUES
    (1, 'The Catcher in the Rye', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Catcher-in-the-rye-red-cover.jpg'),
    (2, 'Nine Stories', 'https://m.media-amazon.com/images/I/41B2f5VvjVL.jpg'),
    (3, 'Franny and Zooey', 'https://upload.wikimedia.org/wikipedia/commons/7/72/Frannyzoey.jpg'),
    (4, 'The Great Gatsby', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg'),
    (5, 'Tender is the Night', 'https://upload.wikimedia.org/wikipedia/commons/2/25/Tender_Is_the_Night_%281934_1st_ed_dust_jacket%29.jpg'),
    (6, 'Pride and Prejudice', 'https://almabooks.com/wp-content/uploads/2016/10/9781847493699.jpg'),
    (7, 'Professional ASP.NET 4.5 in C# and VB', 'https://media.wiley.com/product_data/coverImage300/59/11183320/1118332059.jpg')
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
    Name VARCHAR(70),
    PRIMARY KEY(Id)
);

INSERT INTO Categories
    (Name)
VALUES
    ('Admin'),
    ('User')
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
    ('Cynthia Bowman', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2),
    ('Hanley Rios', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Rowena Twitty', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Fabian Webster', 'India', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Harper Mann', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2),
    ('Christian Wenz', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2)
;