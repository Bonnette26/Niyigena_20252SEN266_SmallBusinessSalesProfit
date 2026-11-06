# PHASE 0 – RESEARCH LOG

**Project Title:** Small Business Sales and Profit Tracking System Using Oracle PL/SQL  
**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266  
**Course:** INSY 8311 – Database Development with PL/SQL  
**Academic Year:** 2026–2027

---

## 1. Research Purpose

The purpose of this research is to understand the challenges small businesses face when recording sales, tracking inventory, monitoring expenses, and calculating profit. The research also examines existing business management systems, available datasets, and Oracle PL/SQL technologies that can support the development of a Small Business Sales and Profit Tracking System.

## 2. Reviewed Sources

### Source 1: Research Paper – Business Records Management

**Reference:**  
Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

**Key Findings:**  
The study examines the relationship between business records management and business growth. It highlights the importance of maintaining proper business records for evaluating business performance, developing management strategies, and supporting decision-making.

**Identified Gap:**  
The study focuses on business records management and growth rather than developing a customized Oracle database system for recording sales, expenses, and profit.

**Relevance to the Project:**  
This research supports the need for accurate and organized business records. The proposed system will help small businesses maintain structured sales and product records.

### Source 2: Research Paper – Data-Driven Decision-Making

**Reference:**  
Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

**Key Findings:**  
The study investigates how data-driven tools can help small businesses make better decisions. Its field experiment found that providing an analytics dashboard increased data-driven decision-making and average e-retailer revenue by 3.6%.

**Identified Gap:**  
The study examines an analytics dashboard in the eBay environment. It does not develop a customized Oracle PL/SQL database system for managing sales, product costs, and expenses.

**Relevance to the Project:**  
This research supports the planned use of reports and a dashboard to help business owners understand sales performance and make informed decisions.

### Source 3: Rwanda Business Statistics Report

**Reference:**  
National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

**Key Findings:**  
The report estimates that Rwanda had 260,780 business enterprises in 2023. It reports that 88% of business enterprises were informal. Micro businesses employing 1–3 people accounted for 83.9% of business activities, while wholesale and retail trade represented 54.6% of all business enterprises.

**Identified Gap:**  
The report provides important business statistics but does not provide an operational database system for recording daily sales, tracking product costs, and calculating business profit.

**Relevance to the Project:**  
These statistics demonstrate the importance of considering small and micro businesses when designing the proposed sales and profit tracking system.

### Source 4: Dataset – Online Retail

**Reference:**  
Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

**Key Findings:**  
The dataset contains 541,909 transaction records and 8 columns in total: 6 features and 2 identifiers. It includes information such as invoice numbers, product descriptions, quantities, invoice dates, unit prices, customer identifiers, and country.

The dataset is available under the Creative Commons Attribution 4.0 International (CC BY 4.0) licence.

**Identified Gap:**  
The dataset does not provide all the information required by the proposed project, particularly complete product purchase costs and business operating expenses.

**Relevance to the Project:**  
The dataset will provide sample transaction data for testing and demonstrating sales-related database operations. Additional documented cost and expense data will be required to calculate profit more completely.

### Source 5: Existing Business Management System – QuickBooks Online

**Reference:**  
Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

**Key Findings:**  
QuickBooks Online provides inventory management features that allow businesses to track available stock, receive restocking alerts, and view information about products they buy and sell.

**Identified Gap:**  
QuickBooks is an existing commercial accounting solution. The proposed project will instead demonstrate a customized database solution developed using Oracle PL/SQL, with its own database tables, procedures, functions, and business rules.

**Relevance to the Project:**  
This system provides an example of how inventory and sales information can be managed. It helps identify useful features to consider when designing the proposed system.

### Source 6: Technical Documentation – Oracle PL/SQL

**Reference:**  
Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

**Key Findings:**  
Oracle documentation explains how PL/SQL supports server-side programming through procedures, functions, packages, cursors, collections, and exception handling. It also explains that database triggers can execute in response to specified database events.

**Identified Gap:**  
The documentation explains Oracle database technologies but does not provide a complete sales and profit tracking solution designed for small businesses.

**Relevance to the Project:**  
This source provides technical guidance for implementing the proposed system using Oracle PL/SQL features, including procedures, functions, packages, cursors, triggers, and exception handling.

---

## 3. Overall Research Findings

The reviewed sources show that accurate business records and data-driven decision-making are important for business management. Rwanda's business statistics also demonstrate the importance of considering micro and small businesses when developing business management solutions.

Existing systems such as QuickBooks Online provide inventory and sales management features. However, this project focuses on developing a customized solution using Oracle Database and PL/SQL.

The UCI Online Retail dataset provides transaction records that can support testing of sales operations. However, it does not contain all the product cost and operating expense information required for complete profit calculations. Additional documented data will therefore be needed.

## 4. Proposed Project Solution

The project will develop a Small Business Sales and Profit Tracking System using Oracle PL/SQL. The system is intended to help small businesses organize product information, record sales, monitor inventory, record expenses, and calculate profit.

The planned database will include tables such as:

- PRODUCTS
- SALES
- SALE_DETAILS
- EXPENSES
- SUPPLIERS
- USERS
- AUDIT_LOG

The final database structure may be refined during the database design and normalization phase.

## 5. Planned PL/SQL Features

The project plans to use the following Oracle PL/SQL features:

1. **Procedures:** To record sales, update product information, and manage business operations.
2. **Functions:** To calculate sales totals, costs, and profit.
3. **Cursors:** To retrieve and process sales and product records.
4. **Packages:** To organize related procedures and functions.
5. **Triggers:** To automate selected database operations and maintain audit records.
6. **Exception Handling:** To manage invalid inputs and database errors.
7. **Audit Log:** To record selected changes made to important business data.

## 6. Planned Innovation

The planned innovation is to connect the Oracle database to a reporting or dashboard tool, such as Power BI, Excel, or another suitable visualization tool.

The dashboard will be designed to present useful business information, including:

- Total sales
- Total expenses
- Estimated profit
- Best-selling products
- Inventory levels
- Sales performance over time

This feature is planned for a later project phase and will be demonstrated if successfully implemented.

## 7. Research Limitations and Next Steps

**Limitations identified:**

- The UCI Online Retail dataset does not contain complete product purchase costs and operating expenses.
- Some additional data will need to be collected or documented for profit calculations.
- The reviewed sources provide background and technical guidance but do not represent a complete solution for the proposed project.
- The proposed dashboard has not yet been implemented.

**Next steps:**

1. Download and inspect the original UCI Online Retail dataset.
2. Verify its licence and document the data preparation process.
3. Identify or prepare documented product cost and expense data.
4. Clean the dataset and identify cancelled or unsuitable transactions.
5. Design the database tables and relationships.
6. Develop the Oracle PL/SQL components.
7. Connect the database to a reporting or dashboard tool if feasible.

## 8. Conclusion

The research supports the development of a Small Business Sales and Profit Tracking System using Oracle PL/SQL. The reviewed studies, Rwanda business statistics, existing inventory management software, dataset, and Oracle documentation provide a foundation for the project. The proposed solution will focus on organizing business records, tracking sales and expenses, monitoring inventory, and calculating profit through a structured Oracle database.