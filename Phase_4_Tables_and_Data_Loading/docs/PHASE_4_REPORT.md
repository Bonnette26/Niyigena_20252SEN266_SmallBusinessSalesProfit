# PHASE 4: TABLES AND DATA LOADING

## Project Information
- **Project:** Small Business Sales and Profit Tracking System
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Student:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Group:** I
- **Database:** Oracle Database 26ai Free
- **PDB:** I_20252SEN266_BONNETTE_SBS_DB

## 1. Introduction
This phase focuses on creating the database tables, inserting sample data, and validating the data in the Small Business Sales and Profit Tracking System.

## 2. Tables Created
The following eight tables were successfully created:

1. SUPPLIERS
2. CUSTOMERS
3. USERS
4. PRODUCTS
5. SALES
6. SALE_DETAILS
7. EXPENSES
8. AUDIT_LOG

Primary keys and foreign key relationships were defined to maintain data integrity.

## 3. Data Loading
Sample records were inserted into all eight tables. The sample data was used to test the database structure and relationships.

| Table | Records |
|---|---:|
| SUPPLIERS | 3 |
| CUSTOMERS | 3 |
| USERS | 2 |
| PRODUCTS | 3 |
| SALES | 3 |
| SALE_DETAILS | 4 |
| EXPENSES | 3 |
| AUDIT_LOG | 3 |
| **Total** | **24** |

## 4. Data Validation
The following validation activities were performed:

- Verified that all eight tables contained records.
- Checked sales totals against sale detail subtotals.
- Verified foreign key relationships.
- Checked product prices, quantities, and expense amounts.
- Confirmed that no invalid records were found in the validation queries.

The sales totals were corrected so that they matched their calculated sale detail totals.

## 5. Results
All eight tables were created successfully, and 24 sample records were inserted. The validation queries returned zero invalid records for the tested conditions.

## 6. Conclusion
Phase 4 successfully established the database tables, loaded sample data, and verified important data integrity conditions. The database is ready for the next project phase.

## 7. Evidence
Screenshots are available in the `screenshots` folder:

- 01_all_tables_created.png
- 02_data_loading_validation.png
- 03_final_data_validation.png