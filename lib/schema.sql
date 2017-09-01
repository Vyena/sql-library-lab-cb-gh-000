-- Creates 5 table: Characters, Books, Series, Authors, and Sub-Genres
-- Series have a title and belong to an author and a sub-genre
-- A Sub-Genre has a name
-- Authors have a name
-- Books have a title and year and belong to a series
-- Characters have a name, motto, and species and belong to an author and a series
-- Books have many characters and characters are in many books in a series. How do we accomplish this complex association? With a join table between Characters and Books. This join table (let's call it character_books) will just have -in addition to its primary key- two foreign key columns for the character and book ids. Each row in this join table acts as a relation between a book and a character.

CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER, series_id INTEGER);

CREATE TABLE books (id INTEGER PRIMARY KEY, titlE TEXT, year INTEGER, series_id INTEGER);

CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);

CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);

-- Characters_books JOIN table
CREATE TABLE character_books (id INTEGER PRIMARY KEY, book_id INTEGER, character_id INTEGER);
