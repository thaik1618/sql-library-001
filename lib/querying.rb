def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
  FROM books 
  WHERE series_id = 1";
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters 
  ORDER BY LENGTH(motto) DESC 
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) 
  FROM characters GROUP BY species 
  ORDER BY COUNT(species) DESC 
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
  FROM authors, subgenres, series 
  WHERE series.author_id = authors.id 
  AND series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series, characters 
  WHERE series.id = characters.series_id AND characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(title) 
  FROM characters, books, character_books 
  WHERE character_books.book_id = books.id AND character_books.character_id = characters.id
  GROUP BY name
  ORDER BY COUNT(title) DESC;"
end
