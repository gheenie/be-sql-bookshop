\c my_bookshop;

-- create the books table here

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price_in_pence INT NOT NULL,
    quantity_in_stock INT NOT NULL,
    release_date DATE NOT NULL,
    is_fiction BOOLEAN NOT NULL
);
