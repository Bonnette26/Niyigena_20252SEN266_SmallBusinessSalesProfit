INSERT INTO EXPENSES
    (expense_id, expense_name, amount, expense_date, description)
VALUES
    (1, 'Transport', 15000, DATE '2026-11-01',
     'Transportation costs');

INSERT INTO EXPENSES
    (expense_id, expense_name, amount, expense_date, description)
VALUES
    (2, 'Electricity', 25000, DATE '2026-11-02',
     'Monthly electricity bill');

INSERT INTO EXPENSES
    (expense_id, expense_name, amount, expense_date, description)
VALUES
    (3, 'Rent', 100000, DATE '2026-11-03',
     'Shop rental payment');

COMMIT;