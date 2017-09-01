def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.id) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  # "SELECT authors.name, subgenres.name
  # FROM (
  # (series INNER JOIN subgenres ON series.subgenre_id = subgenres.id) INNER JOIN authors ON authors.id = series.author_id
  # ); "
  #OR
  # "SELECT authors.name, subgenres.name
  #   FROM authors
  #   JOIN series
  #   ON series.author_id = authors.id
  #   JOIN subgenres
  #   ON series.subgenre_id = subgenres.id"
  #rewritten
  "SELECT authors.name, subgenres.name
    FROM series
    JOIN authors
    ON series.author_id = authors.id
    JOIN subgenres
    ON series.subgenre_id = subgenres.id"
end

# -- CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER, series_id INTEGER);
# -- CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT, year INTEGER, series_id INTEGER);
# -- CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);
# -- CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);
# -- CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);
# -- -- Characters_books JOIN table

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series ORDER BY LENGTH(series.title) DESC LIMIT 1;"
end


# INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1);
# INSERT INTO character_books (id, book_id, character_id) VALUES (2, 1, 2);
def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.name)
  FROM characters
  JOIN character_books
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY COUNT(characters.name) DESC;"
end
#
# SELECT owners.name
# FROM owners
# INNER JOIN cats_owners
# ON owners.id = cats_owners.owner_id WHERE cats_owners.cat_id = 3;
#
# SELECT column(s)
# FROM table_one
# INNER JOIN table_two
# ON table_one.column_name = table_two.column_name
# WHERE table_two.column_name = condition;
