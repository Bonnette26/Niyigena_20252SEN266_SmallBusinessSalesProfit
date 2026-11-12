# Phase 0 Presentation
## Small Business Sales and Profit Tracking System Using Oracle PL/SQL


### Slide 1: Title

**Small Business Sales and Profit Tracking System Using Oracle PL/SQL**

- **Student:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Instructor:** Eric Maniraguha
- **Academic Year:** 2026–2027
- **GitHub:** https://github.com/Bonnette26/Niyigena_20252SEN266_SmallBusinessSalesProfit


### Slide 2: Background and Problem

Many small businesses experience difficulties managing their daily business transactions.

**Main problems:**

- Manual recording of sales.
- Difficulty tracking product stock.
- Poor tracking of business expenses.
- Errors when calculating profit.
- Difficulty generating financial reports.
- Challenges managing customer and supplier information.

These problems can affect business decisions, financial management, and business performance.


### Slide 3: Motivation

I chose this project because small businesses need reliable ways to manage their daily financial activities.

**This project aims to:**

- Improve business record management.
- Reduce manual calculation errors.
- Make sales and expenses easier to track.
- Improve product and stock management.
- Support better business decisions through reports and data analysis.


### Slide 4: Project Objectives

**Main Objective**

To develop an Oracle PL/SQL-based system for managing products, customers, suppliers, sales, expenses, inventory, and profit calculations.

**Specific Objectives**

1. Design a relational database for products, customers, suppliers, users, sales, and expenses.
2. Automate sales recording and stock updates.
3. Calculate sales revenue, expenses, and profit.
4. Generate business performance reports.
5. Maintain an audit trail of important database changes.


### Slide 5: Research and Existing Solutions

**Key Research Findings**

- **Mintah et al. (2022):** The study highlights the importance of proper business records management and its relationship with business growth and management decisions.
- **Bar-Gill et al. (2024):** A field experiment on eBay found that providing small businesses with an analytics dashboard increased data-driven decision-making and raised average e-retailer revenue by 3.6%.
- **NISR (2025):** Rwanda had 260,780 business enterprises in 2023. Approximately 88% were informal, micro businesses (1–3 employees) accounted for 83.9%, and wholesale and retail trade represented 54.6% of all enterprises.
- **QuickBooks Online (Intuit, 2026):** Provides inventory tracking and restocking alerts, but it is a commercial accounting product rather than a customized database solution.
- **Oracle (n.d.):** PL/SQL supports procedures, functions, packages, cursors, triggers, and exception handling for implementing server-side business logic.

**Identified Gaps**

- Existing tools such as QuickBooks are commercial products and may not provide the specific customized database structure required by this project.
- Generic analytics solutions do not necessarily combine all the business operations required by this project.
- The UCI Online Retail dataset does not provide complete product purchase costs and operating expenses.
- The project aims to integrate sales, expenses, stock management, profit calculation, and auditing within one customized Oracle PL/SQL database.

**How This Project Addresses the Gaps**

This project will develop a customized Oracle PL/SQL system that integrates sales management, expense tracking, inventory management, profit calculation, and audit logging.


### Slide 6: Data Sources

**Main Secondary Dataset: UCI Online Retail**

**Dataset Link:**  
https://archive.ics.uci.edu/dataset/352/online+retail

**Dataset Information**

- Dataset Name: Online Retail.
- Author: Daqing Chen.
- Year: 2015.
- Repository: UCI Machine Learning Repository.
- Number of Records: 541,909.
- License: Creative Commons Attribution 4.0 International (CC BY 4.0).
- Format: Excel (.xlsx).

**Data Includes**

- Invoice numbers.
- Product codes.
- Product descriptions.
- Quantities.
- Invoice dates.
- Unit prices.
- Customer IDs.
- Country information.

**Additional Data Sources**

- Planned small-business records, subject to permission from the business owner.
- Clearly labelled sample records for database development and testing.
- Audit records generated automatically within Oracle Database.

**Dataset Limitation**

The UCI dataset provides historical retail transaction information but does not contain all product purchase costs and operating expenses.

Therefore, additional documented cost and expense data will be needed for complete profit calculations.


### Slide 7: Proposed Solution and Innovation

**Proposed Solution**

An Oracle PL/SQL database system that manages:

- Products and suppliers.
- Customers and users.
- Sales transactions.
- Product stock.
- Business expenses.
- Profit calculations.
- Database auditing.

**Innovation Option: Analytics Dashboard**

**Planned Tool:** Microsoft Power BI

The dashboard will connect to the Oracle database and display:

- Total sales revenue.
- Total operating expenses.
- Gross and net profit.
- Monthly sales trends.
- Product performance.
- Business performance indicators.

The dashboard is planned to use data from the Oracle database rather than manually entered dashboard figures.


### Slide 8: Planned Database Design

The system will contain **eight main database tables**.

| Table | Purpose |

1. SUPPLIERS: Stores supplier information. 
2. CUSTOMERS: Stores customer information. 
3. USERS: Stores authorized system users and their roles. 
4. PRODUCTS: Stores product details, selling prices, purchase costs, and stock quantities. 
5. SALES: Stores general sales transaction information.
6. SALE_DETAILS: Stores individual products, quantities, selling prices, and unit costs included in each sale. 
7. EXPENSES: Stores business operating expenses, including category, amount, and date. 
8. AUDIT_LOG: Stores records of important database changes. 

**Relationships Between Tables**

- One SUPPLIER can supply many PRODUCTS (1:N).
- One CUSTOMER can have many SALES (1:N).
- One USER can record many SALES (1:N).
- One SALE can contain many SALE_DETAILS (1:N).
- One PRODUCT can appear in many SALE_DETAILS (1:N).
- AUDIT_LOG records selected changes made to important database records.

All tables will be connected through primary keys and foreign keys to maintain data consistency and referential integrity.


### Slide 9: PL/SQL Approach

| PL/SQL Feature | Planned Use |

1. Procedures: Register products, record sales, and record expenses.
2. Functions: Calculate sales revenue, expenses, and profit. 
3. Cursors: Retrieve and display sales and expense reports. 
4. Packages: Organize related procedures and functions. 
5. Triggers: Automate stock updates and record selected database changes. 
6. Exceptions: Handle invalid quantities, missing products, and other errors. 

Business rules and database operations will be implemented using Oracle PL/SQL.


### Slide 10: Expected Results

The project is expected to produce:

- A working Oracle relational database.
- Product and supplier management.
- Customer and user management.
- Sales transaction management.
- Automatic stock updates.
- Expense recording.
- Accurate financial calculations.
- Sales, expense, and profit reports.
- An audit trail of important database changes.
- An interactive Microsoft Power BI dashboard connected to Oracle, subject to successful integration.


### Slide 11: Future Improvements and Limitations

**Future Improvements**

- Improve user authentication and role-based access control.
- Add more detailed financial reports.
- Support additional business branches.
- Introduce sales forecasting.
- Improve dashboard features and visual analytics.

**Limitations**

- The selected UCI dataset does not include all product costs and operating expenses.
- Access to actual small-business records depends on permission from the business owner.
- Sample data may be required where actual business data is unavailable.
- The dashboard requires a successful connection to Oracle Database.
- The initial version will focus on core small-business operations.


### Slide 12: References (APA)

Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

