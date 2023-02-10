\c my_bookshop

\echo '\n Here are the genres for The Little Prince:\n'

SELECT books_genres.book_genre_id, books.title, genres.genre
FROM books_genres
JOIN books ON books_genres.book_id = books.book_id
JOIN genres ON books_genres.genre_id = genres.genre_id
WHERE books.title = 'The Little Prince';

\echo '\n Here are all the romance books:\n'

SELECT books_genres.book_genre_id, books.title, genres.genre
FROM books_genres
JOIN books ON books_genres.book_id = books.book_id
JOIN genres ON books_genres.genre_id = genres.genre_id
WHERE genres.genre = 'romance';
