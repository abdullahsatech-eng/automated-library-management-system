-- Reconstructed from the surviving academic project documentation.
-- Query examples covering availability, joins, aggregation,
-- grouping, and nested queries.

-- 1. Display available books
SELECT title, publisher
FROM BOOKS
WHERE availability_status = 'Yes';


-- 2. Display issued books with member names
SELECT b.title, m.member_name
FROM ISSUEDBOOKS i
JOIN BOOKS b ON i.book_id = b.book_id
JOIN MEMBERS m ON i.member_id = m.member_id;


-- 3. Calculate total fines
SELECT SUM(amount) AS Total_Fine
FROM FINES;


-- 4. Count total books
SELECT COUNT(*) AS Total_Books
FROM BOOKS;


-- 5. Count members by membership type
SELECT membership_type, COUNT(*) AS Total_Members
FROM MEMBERS
GROUP BY membership_type;


-- 6. Find books that have been issued
SELECT title
FROM BOOKS
WHERE book_id IN (
    SELECT book_id
    FROM ISSUEDBOOKS
);
