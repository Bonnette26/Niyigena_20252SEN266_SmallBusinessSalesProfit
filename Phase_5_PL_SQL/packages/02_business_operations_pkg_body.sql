
CREATE OR REPLACE PACKAGE BODY business_operations_pkg AS

    FUNCTION calculate_total_sales (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER
    IS
        v_total NUMBER;
    BEGIN
        SELECT NVL(SUM(total_amount), 0)
        INTO v_total
        FROM SALES
        WHERE sale_date >= p_start_date
          AND sale_date < p_end_date + 1;

        RETURN v_total;
    END calculate_total_sales;


    FUNCTION calculate_total_expenses (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER
    IS
        v_total NUMBER;
    BEGIN
        SELECT NVL(SUM(amount), 0)
        INTO v_total
        FROM EXPENSES
        WHERE expense_date >= p_start_date
          AND expense_date < p_end_date + 1;

        RETURN v_total;
    END calculate_total_expenses;


    FUNCTION calculate_profit (
        p_start_date IN DATE,
        p_end_date IN DATE
    ) RETURN NUMBER
    IS
    BEGIN
        RETURN calculate_total_sales(
                   p_start_date, p_end_date
               )
             - calculate_total_expenses(
                   p_start_date, p_end_date
               );
    END calculate_profit;

END business_operations_pkg;
/
