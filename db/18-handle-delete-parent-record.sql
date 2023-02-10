\c my_bookshop

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM books_genres;

-- Deleting a book:
-- Modify the books_genres table in section 14 first

-- Delete a book here:
DELETE FROM books
WHERE title = 'Nineteen Eighty-Four: A Novel'
RETURNING *;

SELECT * FROM books;
SELECT * FROM books_genres;

-- Deleting an author:
-- Modify the books table in section 02 first

-- Modify the books_genres table in section 14 first

-- Delete an author here:
DELETE FROM authors
WHERE full_name = 'Jane Austen'
RETURNING *;

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM books_genres;
