-- Jan´s table

-- 1. SELECT users.user_name, reading.start_date,reading.end_date,book.book_name FROM reading INNER JOIN users ON reading.reading_ID = users.fk_reading_ID JOIN book ON users.user_id = book.fk_user_ID

-- 2. SELECT users.user_name, book.book_name FROM users RIGHT JOIN book ON users.user_id = book.fk_user_ID;

-- 3. SELECT users.user_name, book.book_name FROM users LEFT JOIN book ON users.user_id = book.fk_user_ID;

-- 4. SELECT author.author_name, book.book_name FROM author INNER JOIN book ON author.author_ID = book.fk_author_ID;