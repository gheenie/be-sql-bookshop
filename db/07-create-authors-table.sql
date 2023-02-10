\c my_bookshop

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    full_name varchar(50) NOT NULL,
    fun_fact TEXT NOT NULL
);
