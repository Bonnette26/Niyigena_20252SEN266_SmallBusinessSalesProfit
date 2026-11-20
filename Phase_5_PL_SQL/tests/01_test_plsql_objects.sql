
SET SERVEROUTPUT ON;

-- Test 1: Calculate total sales
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Total Sales: ' ||
        calculate_total_sales(
            DATE '2026-01-01',
            DATE '2026-12-31'
        )
    );
END;
/

-- Test 2: Calculate total expenses
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Total Expenses: ' ||
        calculate_total_expenses(
            DATE '2026-01-01',
            DATE '2026-12-31'
        )
    );
END;
/

-- Test 3: Calculate profit using package
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Total Profit: ' ||
        business_operations_pkg.calculate_profit(
            DATE '2026-01-01',
            DATE '2026-12-31'
        )
    );
END;
/

-- Test 4: Negative quantity validation
BEGIN
    update_product_quantity(101, -5);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Quantity validation passed: ' || SQLERRM
        );
END;
/

-- Test 5: Negative expense validation
BEGIN
    record_expense(
        5,
        'Invalid Expense',
        -1000,
        DATE '2026-11-20',
        'Testing negative expense'
    );
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Expense validation passed: ' || SQLERRM
        );
END;
/
