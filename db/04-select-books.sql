\c my_bookshop;

\echo '\n Here are all the books that we have in stock:\n'

SELECT * FROM books;

\echo '\n Here are all the non-fiction books:\n'

SELECT * FROM books
WHERE is_fiction = 't';

\echo '\n Here are all the books released in the 1900s:\n'

SELECT * FROM books
WHERE release_date BETWEEN '1900-01-01' AND '1909-12-31';

\echo '\n Here are all the books with "The" in the title:\n'

SELECT * FROM books
WHERE title LIKE '%the%'
OR title LIKE '%Tale%';

\echo '\n Here are the books sorted in alphabetical order:\n'

SELECT * FROM books
ORDER BY title ASC;

\echo '\n Here is the most expensive book:\n'

SELECT * FROM books
WHERE price_in_pence = (
    SELECT MAX(price_in_pence) FROM books
);
