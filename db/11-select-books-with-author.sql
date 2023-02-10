\c my_bookshop

\echo '\n Here is a list of book titles with the corresponding author:\n'

SELECT title, author
FROM books;

\echo '\n Here is a list of authors without an associated book:\n'

SELECT authors.author_name
FROM authors LEFT OUTER JOIN books
ON authors.author_name = books.author
WHERE books.author IS NULL;
