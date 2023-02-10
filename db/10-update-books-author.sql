\c my_bookshop

UPDATE books
SET author_id = inserting.author_id
FROM (VALUES
    ('The Hitchhiker''s Guide to the Galaxy', 3),
    ('The Little Prince', 2),
    ('The Tale of Peter Rabbit', 7),
    ('Emma', 14),
    ('Nineteen Eighty-Four: A Novel', 13),
    ('The Handmaid''s Tale', 15),
    ('The War of the Worlds', 12),
    ('Pride and Prejudice', 14)
) AS inserting(title, author_id)
WHERE inserting.title = books.title
RETURNING *;
