-- Validation examples reconstructed from the surviving project documentation.
-- The original report documented tests for constraints, availability,
-- fine calculation, and trigger behavior.


-- 1. Duplicate ISBN validation
-- Expected to fail if the ISBN already exists.
INSERT INTO BOOKS
VALUES (
    book_seq.NEXTVAL,
    'Test Book',
    '9789690017044',
    1,
    'Test',
    'Yes'
);


-- 2. Foreign-key validation
-- Expected to fail when (999, 4) does not reference valid parent rows.
INSERT INTO BOOK_AUTHORS
VALUES (999, 4);


-- 3. Documented validation areas
-- Fine calculation
-- Book availability
-- Trigger behavior
