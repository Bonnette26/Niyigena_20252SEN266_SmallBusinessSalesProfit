
SET SERVEROUTPUT ON;

DECLARE
    CURSOR product_cursor IS
        SELECT product_id,
               product_name,
               selling_price,
               quantity
        FROM PRODUCTS
        ORDER BY product_id;

BEGIN
    FOR product_record IN product_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Product: ' || product_record.product_name ||
            ' | Selling Price: ' || product_record.selling_price ||
            ' | Quantity: ' || product_record.quantity
        );
    END LOOP;
END;
/
