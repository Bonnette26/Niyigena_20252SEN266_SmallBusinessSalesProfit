CREATE OR REPLACE PROCEDURE update_product_quantity (
    p_product_id IN NUMBER,
    p_new_quantity IN NUMBER
)
AS
BEGIN
    IF p_new_quantity < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Quantity cannot be negative'
        );
    END IF;

    UPDATE PRODUCTS
    SET quantity = p_new_quantity
    WHERE product_id = p_product_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Product not found'
        );
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Product quantity updated successfully.'
    );
END;
/