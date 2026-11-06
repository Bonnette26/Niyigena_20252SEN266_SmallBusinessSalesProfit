# PROJECT PROPOSAL

## Small Business Sales and Profit Tracking System Using Oracle PL/SQL

**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266  
**Course:** INSY 8311 – Database Development with PL/SQL  
**Academic Year:** 2026–2027  
**Instructor:** Eric Maniraguha  
**Database:** Oracle Database 26ai Free

### 1. Problem Statement

Many small businesses face challenges in managing daily sales, monitoring product stock, recording operating expenses, and calculating profits accurately. When these activities are managed manually, businesses may experience calculation errors, missing records, poor inventory control, and difficulties understanding their financial performance.

There is a need for a reliable database system that organizes business information, automates important calculations, and provides useful reports to support decision-making.

### 2. Proposed Solution

This project proposes the development of a **Small Business Sales and Profit Tracking System** using Oracle Database and PL/SQL.

The system will manage product and supplier information, record sales transactions and their details, monitor stock quantities, record business expenses, and calculate revenue and estimated profit. It will also use PL/SQL programming features to enforce business rules, handle errors, and maintain records of important database changes.

The system will provide organized information that can help small business owners monitor their operations and make informed decisions.

### 3. Data Source

The project will use the **UCI Online Retail dataset**:

https://doi.org/10.24432/C5BW33

The dataset contains 541,909 transaction records from a UK-based online retailer. It includes information such as invoice numbers, product descriptions, quantities, invoice dates, unit prices, customer identifiers, and country.

The dataset is available under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** licence. It will provide transaction data for testing and demonstrating sales-related database operations.

However, the dataset does not contain complete product purchase costs or business operating expenses. Therefore, additional documented product-cost and expense data will be prepared to support estimated profit calculations To support profit calculations, the following documented approach will be used:

1. **Product costs:** Where purchase costs are missing from the dataset, a documented cost ratio will be applied (e.g., estimated cost = 60% of unit price), clearly labelled as an assumption in the data dictionary.
2. **Operating expenses:** A documented sample EXPENSES table will be prepared with realistic categories (rent, transport, salaries, utilities) and clearly marked as illustrative project data.
3. **Data cleaning:** Cancelled invoices, negative quantities, and missing product descriptions will be removed and documented in the data preparation log.

Customer identifiers will not be used to identify individuals in project reports.

### 4. Planned Database Tables

The proposed database will contain the following seven main tables:

1. **PRODUCTS:** Stores product names, descriptions, prices, costs, and available stock quantities.
2. **SALES:** Stores general sales transaction information, including sale dates and transaction totals.
3. **SALE_DETAILS:** Stores individual products, quantities, and prices belonging to each sale. It connects SALES and PRODUCTS.
4. **EXPENSES:** Records business operating expenses, amounts, categories, and dates.
5. **SUPPLIERS:** Stores supplier information related to products.
6. **USERS:** Stores system user information and roles for managing access.
7. **AUDIT_LOG:** Records selected database changes for accountability and tracking.

These tables will be connected through primary and foreign keys to maintain data consistency and relationships.

### 5. Planned PL/SQL Features

The project will apply the following Oracle PL/SQL features:

- **Procedures:** To register products, record sales, update stock, and record expenses.
- **Functions:** To calculate sales revenue, total expenses, product costs, and estimated profit.
- **Cursors:** To retrieve and process sales, product, and expense records for reports.
- **Packages:** To organize related procedures and functions into reusable program units.
- **Triggers:** To automate stock updates and record selected changes in the audit log.
- **Exception Handling:** To manage invalid quantities, insufficient stock, missing records, and other database errors.
- **Collections:** To process groups of transaction or product records efficiently where appropriate.

Business rules and important calculations will be implemented in PL/SQL to maintain consistency and reliability.

### 6. Innovation

**Innovation Option:** Analytics Dashboard  
**Planned Tool:** Microsoft Power BI

The project plans to connect Microsoft Power BI to the Oracle database to develop an interactive dashboard using actual database information.

The dashboard will display total sales, total expenses, estimated profit, monthly sales trends, best-selling products, and inventory levels. It will help business owners understand business performance through visual reports instead of relying only on manual calculations.

The dashboard is planned for a later project phase. Microsoft Power BI will connect to Oracle Database 26ai Free using the **Oracle client / ODBC driver** (Power BI Oracle connector). The dashboard will read data from the Oracle database, while the main business rules and profit calculations will remain enforced in PL/SQL procedures, functions, and triggers. The connection method, screenshots, and setup steps will be documented in the `innovation/` folder in Phase VII.

### 7. Expected Results

The expected result is a working Oracle PL/SQL database system that organizes products, suppliers, sales, sale details, expenses, users, and audit records. The system should support accurate transaction recording, stock monitoring, estimated profit calculations, and useful business reports.

### 8. References

Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html
