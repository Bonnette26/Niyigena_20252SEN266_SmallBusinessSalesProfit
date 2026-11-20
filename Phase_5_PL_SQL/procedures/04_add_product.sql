
CREATE OR REPLACE PROCEDURE add_product (
    p_product_id IN NUMBER,
    p_product_name IN VARCHAR2,
    p_purchase_price IN NUMBER,
    p_selling_price IN NUMBER,
    p_quantity IN NUMBER,
    p_supplier_id IN NUMBER
)
AS
BEGIN
    IF p_purchase_price < 0
       OR p_selling_price < 0
       OR p_quantity < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20005,
            'Prices and quantity cannot be negative'
        );
    END IF;

    INSERT INTO PRODUCTS (
        product_id,
        product_name,
        purchase_price,
        selling_price,
        quantity,
        supplier_id
    )
    VALUES (
        p_product_id,
        p_product_name,
        p_purchase_price,
        p_selling_price,
        p_quantity,
        p_supplier_id
    );

    DBMS_OUTPUT.PUT_LINE('Product added successfully.');
END;
/
