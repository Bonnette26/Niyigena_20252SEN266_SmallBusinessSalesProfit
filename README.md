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

This project develops a Small Business Sales and Profit Tracking System using Oracle Database and PL/SQL. The system provides a structured way to record sales, manage products, monitor inventory, record expenses, and calculate estimated business profit.

The project combines relational database design, data management, PL/SQL programming, testing, and reporting to support better business record management and decision-making.

## 3. Problem Statement

Small businesses may experience challenges when recording daily transactions, monitoring inventory, tracking expenses, and calculating profit. Manual record-keeping can lead to inaccurate information, missing records, data duplication, and difficulties in retrieving business information.

There is a need for a centralized database system that organizes business records and supports reliable sales, inventory, and expense tracking.

## 4. Project Objectives

The main objective is to develop a database-driven system that helps small businesses manage sales and monitor profitability.

Specific objectives are to:

1. Design and implement a relational database for business operations.
2. Store and manage product and supplier information.
3. Record sales transactions and their details.
4. Monitor inventory levels and product availability.
5. Record business expenses.
6. Calculate sales revenue, expenses, and estimated profit.
7. Use PL/SQL features to automate selected business operations.
8. Generate useful reports to support business decisions.
9. Demonstrate an innovation that improves business performance monitoring.

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

### Dataset Limitation

The Online Retail dataset does not contain complete product purchase costs or business operating expenses. Additional documented cost and expense data are therefore required to support profit calculations.

### Implementation Note

The Online Retail dataset was selected and prepared during the data sourcing and normalization work. However, the records currently inserted into the implemented database tables are sample/test records. The complete Online Retail dataset has not yet been imported into the implemented database tables.

The sample records are used to demonstrate and test the database structure, relationships, constraints, and PL/SQL operations. They should not be interpreted as actual imported Online Retail dataset records.

## 6. Database Design and Tables

The Small Business Sales and Profit Tracking System consists of eight main database tables. Each table stores specific business information and helps maintain data accuracy, consistency, and reliable reporting.

1. **SUPPLIERS:** Stores information about suppliers who provide products to the business.
2. **CUSTOMERS:** Stores customer details, including names and contact information.
3. **USERS:** Stores system user information and assigned roles.
4. **PRODUCTS:** Stores product information, including descriptions, purchase prices, selling prices, available stock quantities, and supplier references.
5. **SALES:** Stores general sales transaction information, including transaction dates, customers, users, and total amounts.
6. **SALE_DETAILS:** Stores individual products included in each sale, including quantities and unit prices.
7. **EXPENSES:** Records business operating expenses such as rent, transport, utilities, and other costs.
8. **AUDIT_LOG:** Records selected database activities and changes to support accountability and tracking.

### Database Relationships

The tables are connected using primary keys and foreign keys.

Examples include:

- SUPPLIERS is related to PRODUCTS.
- CUSTOMERS is related to SALES.
- USERS is related to SALES.
- SALES is related to SALE_DETAILS.
- PRODUCTS is related to SALE_DETAILS.

These relationships help maintain referential integrity and reduce data duplication.

## 7. PL/SQL Development Features

The project uses Oracle PL/SQL features to support business operations and database management.

### Procedures

Procedures are used to perform business operations, including:

- Updating product quantities.
- Recording business expenses.
- Recording sales transactions.
- Adding new products.

### Functions

Functions are used to calculate:

- Total sales.
- Total expenses.
- Estimated profit.

### Cursors

Explicit cursors are used to retrieve and display:

- Sales records with customer information.
- Product information, including selling prices and quantities.

### Packages

The `BUSINESS_OPERATIONS_PKG` package organizes related financial calculation functions.

### Exception Handling

Exception handling is used to identify and manage invalid inputs, such as negative product quantities and negative expense amounts.

### Audit Logging

The AUDIT_LOG table provides a structure for recording selected database activities.

## 8. Financial Calculations

The project calculates estimated profit using the following formula:

**Estimated Profit = Total Sales − Total Expenses**

The PL/SQL functions calculate total sales, total expenses, and estimated profit for a specified date range.

The calculation represents a simplified business performance measure. It should not be interpreted as complete accounting profit because additional costs, such as cost of goods sold and other operating costs, may need to be included.

## 9. Proposed Innovation

The proposed innovation is to connect the Oracle database to a reporting and visualization tool such as Microsoft Power BI or Excel.

The innovation aims to provide a business performance dashboard displaying:

- Total sales revenue.
- Total business expenses.
- Estimated profit.
- Best-selling products.
- Inventory levels.
- Sales performance over time.

The dashboard will help business owners understand business performance through visual reports and summarized information.

The innovation demonstration will form part of the project deliverables.

## 10. Expected Results

The project aims to provide:

1. A functional Oracle relational database.
2. Properly structured business tables and relationships.
3. PL/SQL procedures, functions, cursors, and packages.
4. Automated operations for selected business activities.
5. Financial calculations for total sales, expenses, and estimated profit.
6. Exception handling for invalid inputs.
7. Organized project documentation and SQL scripts.
8. Useful reports and an innovation demonstration.
9. A complete and well-organized GitHub repository.

## 11. Project Limitations

- The selected public dataset does not provide all the information required for complete profit calculations.
- Additional documented product cost and expense data are required.
- The database currently uses sample/test records rather than a complete import of the Online Retail dataset.
- The financial calculation is a simplified estimated profit calculation.
- Dashboard integration depends on the availability and compatibility of the selected visualization tool.

## 12. References

1. Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

2. Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

3. National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

4. Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

5. Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

6. Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

## 13. Project Implementation Roadmap

The project is organized into eight phases. Each phase contributes to the research, design, implementation, testing, documentation, and presentation of the Small Business Sales and Profit Tracking System.

### Phase 0: Research and Proposal

This phase involves identifying the business problem, defining project objectives, evaluating the data source, reviewing relevant literature, and preparing the project proposal.

### Phase I: Business Process Modeling

This phase focuses on analyzing business processes and developing BPMN, Use Case, and UML diagrams to illustrate how the proposed system will operate.

### Phase II: Data Sourcing and Normalization

This phase involves collecting, examining, cleaning, and preparing the selected dataset. The data is also normalized to reduce duplication and improve consistency.

### Phase III: PDB and Oracle Database Environment

This phase involves configuring the Oracle Pluggable Database (PDB), establishing the database environment, creating the required tablespaces, and preparing the database for development and administration.

### Phase IV: Tables Creation and Data Loading

This phase focuses on creating database tables, defining primary and foreign keys, establishing relationships and constraints, inserting data, and validating database records.

### Phase V: Advanced PL/SQL Development

This phase involves developing PL/SQL procedures, functions, cursors, packages, and exception-handling mechanisms to support the system's business operations.

### Phase VI: Testing, Reporting, and Final Documentation

This phase involves testing the database system, validating its operations, generating sales and estimated profit reports, preparing dashboards, and completing the project documentation.

### Phase VII: Documentation, Innovation, and Final Presentation

This phase focuses on preparing and organizing the final project deliverables.

The main deliverables include:

1. **Complete Documentation:** A comprehensive final project report and supporting technical documentation.
2. **Complete Repository:** A well-organized GitHub repository containing all project phases, SQL scripts, reports, tests, and screenshots.
3. **Innovation Demo:** A demonstration of the proposed innovation, such as a business performance dashboard or reporting solution.
4. **Final Presentation:** A 10-slide presentation explaining the project background, objectives, database design, implementation, PL/SQL development, testing, innovation, results, and conclusion.

## Conclusion

The Small Business Sales and Profit Tracking System is designed to provide a structured database solution for managing small business operations using Oracle PL/SQL.

Through database design, data sourcing, normalization, PL/SQL development, testing, reporting, and innovation, the project aims to support accurate sales recording, inventory monitoring, expense management, and estimated profit analysis.

The eight project phases provide a structured approach to developing, documenting, demonstrating, and presenting the complete system.
