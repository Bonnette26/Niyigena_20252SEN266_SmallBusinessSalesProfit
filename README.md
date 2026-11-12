# Small Business Sales and Profit Tracking System Using Oracle PL/SQL

## 1. Project Information

- **Project Title:** Small Business Sales and Profit Tracking System Using Oracle PL/SQL
- **Student Name:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Instructor:** Eric Maniraguha
- **Academic Year:** 2026–2027
- **Database:** Oracle Database 26ai Free

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
- **License:** Creative Commons Attribution 4.0 International (CC BY 4.0)

The dataset contains invoice numbers, product descriptions, quantities, invoice dates, unit prices, customer identifiers, and countries.

**Dataset Limitation:** The dataset does not contain complete product purchase costs or business operating expenses. Additional documented cost and expense data will therefore be required to support profit calculations.

## 6. Planned Tables

The proposed Small Business Sales and Profit Tracking System will consist of eight main database tables. Each table will store specific business information and help maintain data accuracy, consistency, and reliable reporting.

1. **SUPPLIERS:** Stores information about suppliers who provide products to the business.
2. **CUSTOMERS:** Stores customer details, including names and contact information.
3. **PRODUCTS:** Stores product information, including descriptions, selling prices, purchase costs, and available stock quantities.
4. **USERS:** Stores system user accounts, usernames, and assigned roles.
5. **SALES:** Stores general sales transaction information, including transaction dates, customers, and total amounts.
6. **SALE_DETAILS:** Stores individual products included in each sale, including quantities, unit selling prices, and costs at the time of sale.
7. **EXPENSES:** Records business operating expenses such as rent, transport, utilities, and other costs.
8. **AUDIT_LOG:** Records selected database activities and changes to support accountability and tracking.

### Database Relationships

The tables will be connected using primary keys and foreign keys. For example, SUPPLIERS will be related to PRODUCTS, CUSTOMERS to SALES, SALES to SALE_DETAILS, and PRODUCTS to SALE_DETAILS. These relationships will help maintain referential integrity and reduce data duplication.

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

## 8. Proposed Innovation

The proposed innovation is to connect the Oracle database to a reporting and visualization tool such as Microsoft Power BI or Excel.

The planned dashboard will display:

- Total sales revenue.
- Total business expenses.
- Estimated profit.
- Best-selling products.
- Inventory levels.
- Sales performance over time.

This dashboard is planned for a later project phase and will be implemented and demonstrated if feasible.

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

## 12. Project Status and Implementation Roadmap

The project will be completed through the following seven phases:

### Phase 0: Research and Proposal – In Progress

This phase involves identifying the business problem, defining project objectives, evaluating the data source, reviewing relevant literature, and preparing the project proposal.

### Phase I: Business Process Modeling – Planned

This phase will focus on analyzing the business processes and developing the required BPMN, Use Case, and UML diagrams to illustrate how the proposed system will operate.

### Phase II: Data Sourcing and Normalization – Planned

This phase will involve collecting, examining, cleaning, and preparing the dataset. The data will also be normalized to reduce duplication and improve consistency.

### Phase III: PDB and Oracle Enterprise Manager – Planned

This phase will involve configuring the Oracle Pluggable Database (PDB), establishing the database environment, and setting up Oracle Enterprise Manager for database administration and monitoring.

### Phase IV: Tables Creation and Data Loading – Planned

This phase will focus on creating the database tables, defining primary and foreign keys, establishing relationships and constraints, and loading the prepared data into the database.

### Phase V: Advanced PL/SQL Development – Planned

This phase will involve implementing advanced PL/SQL features, including procedures, functions, triggers, cursors, collections, bulk processing, and exception handling to support the system's operations.

### Phase VI: Testing, Reporting, and Final Documentation – Planned

The final phase will involve testing the database system, validating its operations, generating sales and estimated profit reports, preparing dashboards, and completing the final project documentation.

### Conclusion

The project will be developed progressively through the seven planned phases, starting with research and proposal preparation and ending with system testing, reporting, and final documentation. Each phase will contribute to building a reliable Small Business Sales and Profit Tracking System using Oracle PL/SQL. The completed system is expected to support accurate sales recording, inventory tracking, expense management, and estimated profit analysis.