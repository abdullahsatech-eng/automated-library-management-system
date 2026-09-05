-- Reconstructed from the surviving academic project documentation.

SELECT title, publisher
FROM BOOKS
WHERE availability_status = 'Yes';

SELECT b.title, m.member_name
FROM ISSUEDBOOKS i
JOIN BOOKS b ON i.book_id = b.book_id
JOIN MEMBERS m ON i.member_id = m.member_id;

SELECT SUM(amount) AS Total_Fine
FROM FINES;

SELECT COUNT(*) AS Total_Books
FROM BOOKS;

SELECT membership_type, COUNT(*) AS Total_Members
FROM MEMBERS
GROUP BY membership_type;

SELECT title
FROM BOOKS
WHERE book_id IN (
    SELECT book_id
    FROM ISSUEDBOOKS
);
