-- Reconstructed from the surviving academic project documentation.
-- Issues a book only when it is available, then updates its availability status.

CREATE OR REPLACE PROCEDURE issue_book (
    p_book_id   NUMBER,
    p_member_id NUMBER
)
IS
    v_status VARCHAR2(10);

BEGIN
    SELECT availability_status
    INTO v_status
    FROM BOOKS
    WHERE book_id = p_book_id;

    IF v_status = 'Yes' THEN

        INSERT INTO ISSUEDBOOKS (
            issue_id,
            book_id,
            member_id,
            issue_date,
            due_date,
            actual_return_date
        )
        VALUES (
            issue_seq.NEXTVAL,
            p_book_id,
            p_member_id,
            SYSDATE,
            SYSDATE + 7,
            NULL
        );

        UPDATE BOOKS
        SET availability_status = 'No'
        WHERE book_id = p_book_id;

        DBMS_OUTPUT.PUT_LINE('Book Issued Successfully');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Book Not Available');
    END IF;

END;
/
