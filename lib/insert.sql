-- CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER, series_id INTEGER);
-- CREATE TABLE books (id INTEGER PRIMARY KEY, titlE TEXT, year INTEGER, series_id INTEGER);
-- CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);
-- CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);
-- CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);
-- -- Characters_books JOIN table
--
-- Insert..
-- 2 series
INSERT INTO series (id,title, author_id, subgenre_id) VALUES (1, "A Song of Ice and Fire", 1, 1);
INSERT INTO series (id,title, author_id, subgenre_id) VALUES (2, "Second Series", 2, 2);
-- 2 sub-genres
INSERT into subgenres (id, name) VALUES (1, "medieval");
INSERT INTO subgenres (id, name) VALUES (2, "space opera");
-- 2 authors
INSERT INTO authors (id, name) VALUES (1, "George R. R. Martin");
INSERT INTO authors (id, name) VALUES (2, "Second Author");
-- 3 books in each series
INSERT INTO books (id, title, year, series_id) VALUES (1, "Game of Thrones", 1996, 1);
INSERT INTO books (id, title, year, series_id) VALUES (2, "A Clash of Kings", 1998, 1);
INSERT INTO books (id, title, year, series_id) VALUES (3, "A Storm of Swords", 2000, 1);
INSERT INTO books (id, title, year, series_id) VALUES (4, "First Book", 2002, 2);
INSERT INTO books (id, title, year, series_id) VALUES (5, "Second Book", 2003, 2);
INSERT INTO books (id, title, year, series_id) VALUES (6, "Third Book", 2005, 2);
-- 8 characters (4 characters in each series, 2 in all of the books in a series, and 2 in just 1 book in a series)
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, "Lady", "Woof Woof", "direwolf", 1, 1);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (4, "Eddard Stark", "Winter is coming", "human", 1, 1);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (5, "Character One", "motto one", "cylon", 2, 2);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (6, "Character Two", "motto two", "human", 2, 2);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (7, "Character Three", "motto three", "cylon", 2, 2);
INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (8, "Character Four", "motto four", "cylon", 2, 2);

-- Note you will need to insert values into your character_books join table
INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1);

INSERT INTO character_books (id, book_id, character_id) VALUES (2, 1, 2);
INSERT INTO character_books (id, book_id, character_id) VALUES (3, 2, 2);
INSERT INTO character_books (id, book_id, character_id) VALUES (4, 3, 2);

INSERT INTO character_books (id, book_id, character_id) VALUES (5, 1, 3);
INSERT INTO character_books (id, book_id, character_id) VALUES (6, 2, 3);
INSERT INTO character_books (id, book_id, character_id) VALUES (7, 3, 4);

INSERT INTO character_books (id, book_id, character_id) VALUES (8, 1, 4);


INSERT INTO character_books (id, book_id, character_id) VALUES (9, 4, 5);

INSERT INTO character_books (id, book_id, character_id) VALUES (10, 4, 6);
INSERT INTO character_books (id, book_id, character_id) VALUES (11, 5, 6);
INSERT INTO character_books (id, book_id, character_id) VALUES (12, 6, 6);

INSERT INTO character_books (id, book_id, character_id) VALUES (13, 4, 7);
INSERT INTO character_books (id, book_id, character_id) VALUES (14, 5, 7);
INSERT INTO character_books (id, book_id, character_id) VALUES (15, 6, 7);

INSERT INTO character_books (id, book_id, character_id) VALUES (16, 6, 8);
