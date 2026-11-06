# Small Business Sales and Profit Tracking System Using Oracle PL/SQL

## 1. Project Information

| Item | Details |
|---|---|
| Project Title | Small Business Sales and Profit Tracking System Using Oracle PL/SQL |
| Student Name | NIYIGENA Bonnette |
| Student ID | 20252SEN266 |
| Course | INSY 8311 – Database Development with PL/SQL |
| Instructor | Eric Maniraguha |
| Academic Year | 2026–2027 |
| Database | Oracle Database 26ai Free |

## 2. Project Overview

Small businesses need accurate records to manage their daily sales, products, expenses, and profits. However, some businesses still rely on manual records or disconnected spreadsheets, making it difficult to monitor business performance and make informed decisions.

This project proposes the development of a Small Business Sales and Profit Tracking System using Oracle Database and PL/SQL. The system will provide a structured way to record sales, manage product information, track expenses, monitor inventory, and calculate business profit.

## 3. Problem Statement

Small businesses may experience challenges when recording daily transactions, monitoring inventory, tracking expenses, and calculating profit. Manual record-keeping can lead to inaccurate information, difficulties in retrieving records, and delays in making business decisions.

There is a need for a centralized database system that organizes business information and supports reliable sales and profit tracking.

## 4. Project Objectives

The main objective is to develop a database-driven system that helps small businesses manage sales and monitor profitability.

Specific objectives are to:

1. Design and implement a relational database for managing business operations.
2. Store and manage product and supplier information.
3. Record sales transactions and their details.
4. Monitor inventory levels and product availability.
5. Record business expenses.
6. Calculate total sales, costs, and estimated profit.
7. Use PL/SQL programming features to automate selected business operations.
8. Generate useful reports to support business decisions.

## 5. Research and Data Source

The project is supported by research papers, Rwanda business statistics, an existing business management system, a public dataset, and Oracle technical documentation.

### Selected Dataset

**Dataset:** Online Retail  
**Source:** UCI Machine Learning Repository  
**Author:** Chen, D. (2015)  
**DOI:** https://doi.org/10.24432/C5BW33  
**Records:** 541,909 transaction records  
**Columns:** 8 (6 features and 2 identifiers)  
**Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0)

The dataset contains information such as invoice numbers, product descriptions, quantities, invoice dates, unit prices, customer identifiers, and countries.

**Dataset limitation:** The dataset does not contain complete product purchase costs or business operating expenses. Additional documented cost and expense data will therefore be needed to support profit calculations.

## 6. Planned Database Tables

The proposed database will include the following tables:

| Table | Purpose |
|---|---|
| PRODUCTS | Stores product information, selling prices, costs, and stock quantities. |
| SALES | Stores general sales transaction information. |
| SALE_DETAILS | Stores individual products and quantities included in each sale. |
| EXPENSES | Records business operating expenses. |
| SUPPLIERS | Stores supplier information. |
| USERS | Stores authorized system user information. |
| AUDIT_LOG | Records selected changes made to important database records. |

The final database structure and relationships will be refined during the database design and normalization phase.

## 7. Planned PL/SQL Features

The project will apply the following Oracle PL/SQL programming concepts:

- **Procedures:** To manage sales, products, and business operations.
- **Functions:** To calculate sales totals, costs, and estimated profit.
- **Cursors:** To retrieve and process sales and product records.
- **Packages:** To organize related procedures and functions.
- **Triggers:** To automate selected database operations and maintain audit records.
- **Exception Handling:** To handle invalid inputs and database errors.
- **Collections:** To process multiple records efficiently.
- **Audit Logging:** To maintain records of selected database changes.

## 8. Proposed Innovation

The proposed innovation is to connect the Oracle database to a reporting and visualization tool such as Microsoft Power BI or Excel.

The planned dashboard will present important business information, including:

- Total sales.
- Total expenses.
- Estimated profit.
- Best-selling products.
- Inventory levels.
- Sales performance over time.

This dashboard is planned for a later project phase and will be implemented and demonstrated if feasible.

## 9. Expected Results

At the end of the project, the expected results are:

1. A functional Oracle relational database.
2. Properly structured business tables and relationships.
3. PL/SQL procedures, functions, packages, and triggers.
4. Automated sales and inventory operations.
5. Accurate calculations based on recorded sales, costs, and expenses.
6. Audit records for selected database activities.
7. Useful reports and a planned business performance dashboard.

## 10. Project Limitations

- The selected public dataset does not provide all the information required for complete profit calculations.
- Additional documented product cost and expense data will be required.
- The initial implementation will focus on the database and PL/SQL components.
- Dashboard integration will depend on the availability and compatibility of the selected visualization tool.

## 11. References

1. Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

2. Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

3. National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

4. Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

5. Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

6. Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

---

## 12. Project Status

**Current Phase:** Phase 0 – Research and Proposal

The project is currently focused on research, dataset evaluation, proposal preparation, and initial database planning. Database implementation and advanced PL/SQL development will be completed in the subsequent phases.