-- Reconstructed from the surviving academic project documentation.

CREATE OR REPLACE TRIGGER fine_trigger
AFTER UPDATE OF actual_return_date
ON ISSUEDBOOKS
FOR EACH ROW
WHEN (NEW.actual_return_date > NEW.due_date)
DECLARE
    fine_amount NUMBER;
BEGIN
    fine_amount := (:NEW.actual_return_date - :NEW.due_date) * 50;

    INSERT INTO FINES (
        fine_id, issue_id, amount, payment_status, payment_date
    )
    VALUES (
        fine_seq.NEXTVAL,
        :NEW.issue_id,
        fine_amount,
        'Pending',
        SYSDATE
    );
END;
/
