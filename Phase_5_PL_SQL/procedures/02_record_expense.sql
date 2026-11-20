CREATE OR REPLACE PROCEDURE record_expense (
    p_expense_id IN NUMBER,
    p_expense_name IN VARCHAR2,
    p_amount IN NUMBER,
    p_expense_date IN DATE,
    p_description IN VARCHAR2
)
AS
BEGIN
    IF p_amount < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Expense amount cannot be negative'
        );
    END IF;

    INSERT INTO EXPENSES (
        expense_id,
        expense_name,
        amount,
        expense_date,
        description
    )
    VALUES (
        p_expense_id,
        p_expense_name,
        p_amount,
        p_expense_date,
        p_description
    );

    DBMS_OUTPUT.PUT_LINE(
        'Expense recorded successfully.'
    );
END;
/
