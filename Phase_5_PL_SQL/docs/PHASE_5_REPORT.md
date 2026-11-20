# PHASE V REPORT: PL/SQL DEVELOPMENT

## 1. Project Information

- **Project Title:** Small Business Sales and Profit Tracking System
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Student:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Group:** I
- **Database:** Oracle Database 26ai Free

## 2. Introduction

This phase focuses on developing PL/SQL program units to support business operations in the Small Business Sales and Profit Tracking System.

The implementation includes procedures, functions, explicit cursors, and packages.

## 3. Procedures Developed

Four procedures were created:

1. UPDATE_PRODUCT_QUANTITY – Updates product quantities and validates negative values.
2. RECORD_EXPENSE – Records business expenses.
3. RECORD_SALE – Records sales transactions.
4. ADD_PRODUCT – Adds new products and validates prices and quantities.

## 4. Functions Developed

Three functions were implemented:

1. CALCULATE_TOTAL_SALES – Calculates total sales within a specified date range.
2. CALCULATE_TOTAL_EXPENSES – Calculates total expenses within a specified date range.
3. CALCULATE_PROFIT – Calculates the difference between total sales and total expenses.

## 5. Cursors Developed

Two explicit cursors were implemented:

1. SALES_CURSOR – Displays sales information, customer names, and sale amounts.
2. PRODUCT_CURSOR – Displays product names, selling prices, and available quantities.

## 6. Package Development

A package named BUSINESS_OPERATIONS_PKG was created.

It contains the following functions:
- CALCULATE_TOTAL_SALES
- CALCULATE_TOTAL_EXPENSES
- CALCULATE_PROFIT

Both the package specification and package body compiled successfully.

## 7. Testing and Results

The following tests were performed:

- Successfully updated product quantity.
- Successfully recorded an expense.
- Successfully recorded a sale.
- Successfully added a new product.
- Successfully calculated total sales, expenses, and profit.
- Successfully executed sales and product cursors.
- Tested invalid negative quantity and expense values.

### Financial Calculation Results

| Description | Result |
|---|---:|
| Total Sales | 696,000 |
| Total Expenses | 160,000 |
| Calculated Profit | 536,000 |

Profit was calculated as total sales minus total expenses.

This is a simplified calculation for the project demonstration.

## 8. Error Handling

Application errors were successfully tested:

- ORA-20001: Quantity cannot be negative.
- ORA-20003: Expense amount cannot be negative.

These tests confirmed that the procedures reject invalid negative values.

## 9. Final Validation

All nine database objects were checked using USER_OBJECTS.

Results:
- 4 Procedures – VALID
- 3 Functions – VALID
- 1 Package – VALID
- 1 Package Body – VALID

All nine objects compiled successfully.

## 10. Conclusion

Phase V successfully implemented and tested PL/SQL procedures, functions, explicit cursors, and packages.

The developed program units support important business operations, including product management, sales recording, expense recording, and financial calculations.