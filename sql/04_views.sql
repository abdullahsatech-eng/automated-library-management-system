-- Reconstructed from the surviving academic project documentation.
-- Database views for available books, fine reporting, and borrowing history.


-- 1. View of currently available books
CREATE VIEW Available_Books AS
SELECT
    book_id,
    title,
    publisher
FROM BOOKS
WHERE availability_status = 'Yes';


-- 2. View of member fine information
CREATE VIEW Fine_Report AS
SELECT
    f.fine_id,
    i.member_id,
    f.amount,
    f.payment_status
FROM FINES f
JOIN ISSUEDBOOKS i
    ON f.issue_id = i.issue_id;


-- 3. View of borrowing history
CREATE VIEW Borrow_History AS
SELECT
    m.member_name,
    b.title,
    i.issue_date,
    i.due_date,
    i.actual_return_date
FROM ISSUEDBOOKS i
JOIN MEMBERS m
    ON i.member_id = m.member_id
JOIN BOOKS b
    ON i.book_id = b.book_id;
