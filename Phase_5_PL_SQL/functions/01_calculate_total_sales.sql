
CREATE OR REPLACE FUNCTION calculate_total_sales (
    p_start_date IN DATE,
    p_end_date IN DATE
)
RETURN NUMBER
AS
    v_total_sales NUMBER;
BEGIN
    SELECT NVL(SUM(total_amount), 0)
    INTO v_total_sales
    FROM SALES
    WHERE sale_date >= p_start_date
      AND sale_date < p_end_date + 1;

    RETURN v_total_sales;
END;
/
