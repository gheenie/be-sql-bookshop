\c my_bookshop

CREATE TABLE books_genres (
    book_genre_id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES books(book_id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES genres(genre_id) ON DELETE SET NULL
);
