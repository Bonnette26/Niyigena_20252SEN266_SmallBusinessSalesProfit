
CREATE OR REPLACE FUNCTION calculate_profit (
    p_start_date IN DATE,
    p_end_date IN DATE
)
RETURN NUMBER
AS
    v_total_sales NUMBER;
    v_total_expenses NUMBER;
BEGIN
    v_total_sales := calculate_total_sales(
        p_start_date,
        p_end_date
    );

    v_total_expenses := calculate_total_expenses(
        p_start_date,
        p_end_date
    );

    RETURN v_total_sales - v_total_expenses;
END;
/
