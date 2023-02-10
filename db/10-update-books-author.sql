\c my_bookshop

UPDATE books
SET author = inserting.author
FROM (VALUES
    ('The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams'),
    ('The Little Prince', 'Antoine de Saint-Exupéry'),
    ('The Tale of Peter Rabbit', 'Beatrix Potter'),
    ('Emma', 'Jane Austen'),
    ('Nineteen Eighty-Four: A Novel', 'George Orwell'),
    ('The Handmaid''s Tale', 'Margaret Atwood'),
    ('The War of the Worlds', 'H. G. Wells'),
    ('Pride and Prejudice', 'Jane Austen')
) AS inserting(title, author)
WHERE inserting.title = books.title
RETURNING *;
