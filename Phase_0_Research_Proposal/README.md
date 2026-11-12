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

Small businesses need accurate records to manage daily sales, products, inventory, expenses, and profits. However, some businesses rely on manual records or disconnected spreadsheets, making it difficult to monitor business performance and make informed decisions.

This project proposes a Small Business Sales and Profit Tracking System using Oracle Database and PL/SQL. The system will provide a structured way to record sales, manage products, monitor inventory, record expenses, and calculate business profit.

## 3. Problem Statement

Small businesses may experience challenges when recording daily transactions, monitoring inventory, tracking expenses, and calculating profit. Manual record-keeping can lead to inaccurate information, missing records, and difficulties in retrieving business information.

There is a need for a centralized database system that organizes business records and supports reliable sales and profit tracking.

## 4. Project Objectives

The main objective is to develop a database-driven system that helps small businesses manage sales and monitor profitability.

Specific objectives are to:

1. Design and implement a relational database for business operations.
2. Store and manage product and supplier information.
3. Record sales transactions and their details.
4. Monitor inventory levels and product availability.
5. Record business expenses.
6. Calculate sales revenue, costs, and estimated profit.
7. Use PL/SQL features to automate selected business operations.
8. Generate useful reports to support business decisions.

## 5. Research and Data Source

The project is supported by research papers, Rwanda business statistics, an existing business management system, a public dataset, and Oracle technical documentation.

### Selected Dataset

- **Dataset:** Online Retail
- **Author:** Chen, D. (2015)
- **Source:** UCI Machine Learning Repository
- **DOI:** https://doi.org/10.24432/C5BW33
- **Records:** 541,909 transaction records
- **Columns:** 8 (6 features and 2 identifiers)
- **Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0)

The dataset contains invoice numbers, product descriptions, quantities, invoice dates, unit prices, customer identifiers, and countries.

**Dataset limitation:** The dataset does not contain complete product purchase costs or business operating expenses. Additional documented cost and expense data will therefore be required to support profit calculations.

## 6. Planned Database Tables

The project will use eight main database tables to manage the daily operations of a small business, including suppliers, customers, products, sales, expenses, and business activities.

1. **SUPPLIERS** – Stores supplier information, including supplier names, contact details, and addresses.

2. **CUSTOMERS** – Stores customer information, including customer names and contact details.

3. **USERS** – Stores system user information, including usernames, full names, roles, and account status.

4. **PRODUCTS** – Stores product information, including product names, descriptions, supplier references, purchase costs, selling prices, and available stock quantities.

5. **SALES** – Stores general sales transaction information, including sale dates, customer references, the user who recorded the sale, and total sale amounts.

6. **SALE_DETAILS** – Stores individual products included in each sale, including product references, quantities sold, unit selling prices, and unit purchase costs at the time of sale.

7. **EXPENSES** – Records business operating expenses, including expense categories, descriptions, amounts, dates, and the user who recorded each expense.

8. **AUDIT_LOG** – Records selected database activities and changes to help track important operations performed in the system.

### Table Relationships

The tables will be connected using primary keys and foreign keys to maintain data consistency:

- **SUPPLIERS → PRODUCTS:** One supplier can supply many products.
- **CUSTOMERS → SALES:** One customer can make many purchases.
- **USERS → SALES:** One user can record many sales.
- **SALES → SALE_DETAILS:** One sale can contain multiple sale details.
- **PRODUCTS → SALE_DETAILS:** One product can appear in many sale details.
- **USERS → EXPENSES:** One user can record many expenses.
- **AUDIT_LOG:** Records selected activities and changes made within the system.

### Data Integrity

Primary keys, foreign keys, NOT NULL constraints, UNIQUE constraints, and CHECK constraints will be used where appropriate to maintain accurate and consistent data.

### Historical Sales Information

The SALE_DETAILS table will store the selling price and purchase cost of each product at the time of sale. This ensures that historical sales and profit calculations remain accurate even when product prices change later.

## 7. Planned PL/SQL Features

The project plans to use the following Oracle PL/SQL features:

- **Procedures:** To record sales, update products, and manage business operations.
- **Functions:** To calculate sales totals, costs, and estimated profit.
- **Cursors:** To retrieve and process sales and product records.
- **Packages:** To organize related procedures and functions.
- **Triggers:** To automate selected database operations and maintain audit records.
- **Exception Handling:** To handle invalid inputs and database errors.
- **Collections:** To process multiple records efficiently.
- **Audit Logging:** To record selected changes to important business data.

## 8. Planned Innovation

### Analytics Dashboard Using Microsoft Power BI

The planned innovation for this project is an interactive **Analytics Dashboard** developed using Microsoft Power BI and connected to the Oracle database.

The dashboard will help small business owners monitor business performance and make better decisions using real-time or refreshed business data.

**Key Dashboard Features**

The dashboard will display the following information:

1. **Total Sales Revenue** – Shows the total money generated from product sales.
2. **Total Business Expenses** – Displays the total operating expenses recorded by the business.
3. **Estimated Net Profit** – Shows the estimated profit after subtracting expenses and product costs from sales revenue.
4. **Monthly Sales Trends** – Displays how sales change over different months.
5. **Best-Selling Products** – Identifies products with the highest sales quantities.
6. **Inventory Monitoring** – Shows available stock quantities for products.
7. **Sales Performance** – Helps compare sales performance over different periods.

**Oracle Database Integration**

Microsoft Power BI will connect to the Oracle database and retrieve actual business data from relevant tables or reporting views. The dashboard will use database information rather than manually entered or sample dashboard figures.

**Role of PL/SQL**

Oracle PL/SQL will handle business operations, calculations, data validation, and business rules. Microsoft Power BI will be responsible for presenting the information through interactive charts, tables, and visual reports.

**Live Demonstration**

During the final presentation, a new sales transaction will be recorded in the Oracle database. The Power BI dashboard will then be refreshed to demonstrate how the new transaction updates the business information displayed.

**Documentation**

The `innovation/` folder will contain documentation explaining the purpose of the dashboard, Oracle database connection setup, instructions for running it, and screenshots demonstrating its functionality.

## 9. Expected Results

The expected project results include:

1. A functional Oracle relational database.
2. Properly structured business tables and relationships.
3. PL/SQL procedures, functions, packages, and triggers.
4. Automated sales and inventory operations.
5. Profit calculations based on recorded sales, costs, and expenses.
6. Audit records for selected database activities.
7. Useful reports and a planned business performance dashboard.

## 10. Project Limitations

- The selected public dataset does not provide all the information required for complete profit calculations.
- Additional documented product cost and expense data will be required.
- The initial implementation will focus on database and PL/SQL components.
- Dashboard integration will depend on the availability and compatibility of the selected visualization tool.

## 11. References

1. Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

2. Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

3. National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

4. Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

5. Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

6. Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

## 12. Project Status

**Current Phase:** Phase 0 – Research and Proposal

The project is currently focused on research, dataset evaluation, proposal preparation, and initial database planning. Database implementation and advanced PL/SQL development will be completed in subsequent phases.