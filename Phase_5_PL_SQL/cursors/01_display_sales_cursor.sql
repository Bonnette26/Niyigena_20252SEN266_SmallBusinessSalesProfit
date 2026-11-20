
SET SERVEROUTPUT ON;

DECLARE
    CURSOR sales_cursor IS
        SELECT s.sale_id,
               c.customer_name,
               s.sale_date,
               s.total_amount
        FROM SALES s
        JOIN CUSTOMERS c
          ON s.customer_id = c.customer_id
        ORDER BY s.sale_date;

BEGIN
    FOR sale_record IN sales_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Sale ID: ' || sale_record.sale_id ||
            ' | Customer: ' || sale_record.customer_name ||
            ' | Amount: ' || sale_record.total_amount
        );
    END LOOP;
END;
/
