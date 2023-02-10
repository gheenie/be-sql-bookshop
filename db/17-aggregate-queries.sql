\c my_bookshop

\echo '\n Here is the total number of books we have by each author:\n'

SELECT COUNT(books.author_id) AS books_written, full_name
FROM books RIGHT OUTER JOIN authors
ON books.author_id = authors.author_id
GROUP BY (authors.author_id);

\echo '\n Here is the average price for dystopian books:\n'

SELECT AVG(books.price_in_pence) AS average_price, genre
FROM books_genres
RIGHT OUTER JOIN genres
ON books_genres.genre_id = genres.genre_id
LEFT JOIN books
ON books_genres.book_id = books.book_id
WHERE genre = 'dystopian'
GROUP BY (genres.genre_id);
