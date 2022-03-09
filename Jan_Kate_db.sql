-- SQL Query 1 - Kate´s table
SELECT family_members.fm_id, reading_status.read_status, book_title.name FROM family_members INNER JOIN reading_status ON family_members.fm_id = reading_status.fk_fm_id JOIN book_title on reading_status.fk_book_id = book_title.book_id;


-- Jan´s table

-- 1. reading + users + book

-- 2. user + book right join

-- 3. user + book left join

-- 4. book inner join author