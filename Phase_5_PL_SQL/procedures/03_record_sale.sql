CREATE OR REPLACE PROCEDURE record_sale (
    p_sale_id IN VARCHAR2,
    p_customer_id IN NUMBER,
    p_user_id IN NUMBER,
    p_sale_date IN DATE,
    p_total_amount IN NUMBER
)
AS
BEGIN
    IF p_total_amount < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Sale amount cannot be negative'
        );
    END IF;

    INSERT INTO SALES (
        sale_id,
        customer_id,
        user_id,
        sale_date,
        total_amount
    )
    VALUES (
        p_sale_id,
        p_customer_id,
        p_user_id,
        p_sale_date,
        p_total_amount
    );

    DBMS_OUTPUT.PUT_LINE(
        'Sale recorded successfully.'
    );
END;
/