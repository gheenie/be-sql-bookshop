\c my_bookshop

\echo '\n Here is a list of book titles with the corresponding author:\n'

SELECT title, full_name
FROM books JOIN authors
ON books.author_id = authors.author_id;

\echo '\n Here is a list of authors without an associated book:\n'

SELECT title, authors.author_id, full_name
FROM books RIGHT OUTER JOIN authors
ON books.author_id = authors.author_id
WHERE title IS NULL;
