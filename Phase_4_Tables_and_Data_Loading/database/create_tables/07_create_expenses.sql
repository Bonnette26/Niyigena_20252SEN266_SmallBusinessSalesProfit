CREATE TABLE EXPENSES (
    expense_id NUMBER PRIMARY KEY,
    expense_name VARCHAR2(100) NOT NULL,
    amount NUMBER(12,2) NOT NULL,
    expense_date DATE NOT NULL,
    description VARCHAR2(255),

    CONSTRAINT chk_expense_amount
        CHECK (amount >= 0)
);