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
    Description VARCHAR(500),
    PRIMARY KEY(Id)
);

INSERT INTO Books
    (Id, Title, Cover, Description)
VALUES
    (1, 'The Catcher in the Rye', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Catcher-in-the-rye-red-cover.jpg', 'The novel details two days in the life of 16-year-old Holden Caulfield after he has been expelled from prep school. Confused and disillusioned, Holden searches for truth and rails against the “phoniness” of the adult world. He ends up exhausted and emotionally unstable. The events are related after the fact.'),
    (2, 'Nine Stories', 'https://m.media-amazon.com/images/I/41B2f5VvjVL.jpg', 'Nine Stories (1953) is a collection of short stories by American fiction writer J. D. Salinger published in April 1953. It includes two of his most famous short stories, "A Perfect Day for Bananafish" and "For Esmé - with Love and Squalor". (Nine Stories is the U.S. title; the book is published in many other countries as For Esmé - with Love and Squalor, and Other Stories.)'),
    (3, 'Franny and Zooey', 'https://upload.wikimedia.org/wikipedia/commons/7/72/Frannyzoey.jpg', "The short story concerns Franny's weekend date with her collegiate boyfriend, Lane Coutell. Lane takes her to a fashionable lunch room, where Franny quickly becomes exasperated when he only appears interested in conversing about the minutiae of his academic frustrations."),
    (4, 'The Great Gatsby', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', "The Great Gatsby, third novel by F. Scott Fitzgerald, published in 1925 by Charles Scribner's Sons. Set in Jazz Age New York, the novel tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth."),
    (5, 'Tender is the Night', 'https://upload.wikimedia.org/wikipedia/commons/2/25/Tender_Is_the_Night_%281934_1st_ed_dust_jacket%29.jpg', "Tender Is the Night, semiautobiographical novel by F. Scott Fitzgerald, published in 1934. It is the story of a psychiatrist who marries one of his patients; as she slowly recovers, she exhausts his vitality until he is, in Fitzgerald's words, un homme épuisé (“a used-up man”)"),
    (6, 'Pride and Prejudice', 'https://almabooks.com/wp-content/uploads/2016/10/9781847493699.jpg', "Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry."),
    (7, 'Professional ASP.NET 4.5 in C# and VB', 'https://media.wiley.com/product_data/coverImage300/59/11183320/1118332059.jpg', "ASP.NET is Microsoft's technology for building dynamically generated web pages from database content. Originally introduced in 2002, ASP.NET has undergone many changes in multiple versions and iterations as developers have gained a decade of experience with this popular technology.")
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
    Email VARCHAR(100) NOT NULL UNIQUE,
    Country VARCHAR(100) NOT NULL,
    Pass VARCHAR(100),
    CategoryId INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

INSERT INTO Users
    (Name, Email, Country, Pass, CategoryId)
VALUES
    ('Cynthia Bowman','Cynthia@gmail.com', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2),
    ('Hanley Rios', 'Hanley@gmail.com', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Rowena Twitty', 'Rowena@gmail.com', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Fabian Webster', 'Fabian@gmail.com', 'India', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 1),
    ('Harper Mann', 'Harper@gmail.com', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2),
    ('Christian Wenz', 'Christian@gmail.com', 'USA', '$2a$10$6a6hr260zNMZ1DtF0/Ouj.L0sKn12S48OdTSrrJJrdY/2DCqSsiBu', 2)
;