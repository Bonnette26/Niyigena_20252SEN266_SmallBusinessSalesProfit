CREATE OR REPLACE PACKAGE business_operations_pkg AS

    FUNCTION calculate_total_sales (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER;

    FUNCTION calculate_total_expenses (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER;

    FUNCTION calculate_profit (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER;

END business_operations_pkg;
/