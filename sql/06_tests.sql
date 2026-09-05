-- Validation examples reconstructed from the surviving project documentation.

-- Duplicate ISBN validation
INSERT INTO BOOKS
VALUES (
    book_seq.NEXTVAL,
    'Test Book',
    '9789690017044',
    1,
    'Test',
    'Yes'
);

-- Foreign-key validation
-- Expected to fail when (999,4) does not reference valid parent rows.
INSERT INTO BOOK_AUTHORS
VALUES (999, 4);

-- Documented validation areas:
-- Fine calculation
-- Book availability
-- Trigger behavior
