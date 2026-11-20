
CREATE OR REPLACE FUNCTION calculate_total_expenses (
    p_start_date IN DATE,
    p_end_date IN DATE
)
RETURN NUMBER
AS
    v_total_expenses NUMBER;
BEGIN
    SELECT NVL(SUM(amount), 0)
    INTO v_total_expenses
    FROM EXPENSES
    WHERE expense_date >= p_start_date
      AND expense_date < p_end_date + 1;

    RETURN v_total_expenses;
END;
/
