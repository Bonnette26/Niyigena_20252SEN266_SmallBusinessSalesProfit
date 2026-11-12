# PHASE 0 – RESEARCH LOG

**Project Title:** Small Business Sales and Profit Tracking System Using Oracle PL/SQL  
**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266  
**Course:** INSY 8311 – Database Development with PL/SQL  
**Instructor:** Eric Maniraguha  
**Academic Year:** 2026–2027  


## 1. Research Purpose

The purpose of this research is to understand the challenges small businesses face when recording sales, tracking inventory, monitoring expenses, and calculating profit.

The research also examines existing business management systems, available datasets, relevant academic studies, Rwanda business statistics, and Oracle PL/SQL technologies that can support the development of a Small Business Sales and Profit Tracking System.

The findings will guide the project requirements, database design, selection of data sources, and implementation of the proposed system.

## 2. Reviewed Sources

### Source 1: Research Paper – Business Records Management

**Reference:**

Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

**Source Type:** Academic Research Paper

**Key Findings:**

The study examines the relationship between business records management and business growth. It highlights that maintaining proper business records helps organizations evaluate performance, make informed decisions, and develop appropriate management strategies.

**Identified Gap:**

The study focuses on business records management and growth rather than developing a customized Oracle database system for managing sales, expenses, inventory, and profit.

**Relevance to the Project:**

This research supports the importance of accurate and organized business records. The proposed system will help small businesses maintain structured product, sales, customer, and expense records.

### Source 2: Research Paper – Data-Driven Decision-Making

**Reference:**

Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

**Source Type:** Academic Research Paper

**Key Findings:**

The study investigates how analytics tools can help small businesses make better decisions. Its field experiment found that access to eBay's Seller Hub analytics dashboard increased data-driven decision-making and average e-retailer revenue by 3.6%.

The findings also emphasize the importance of actively monitoring business performance when using analytics tools.

**Identified Gap:**

The study examines an analytics dashboard within the eBay environment. It does not develop a customized Oracle PL/SQL database system for managing sales, product costs, expenses, and inventory.

**Relevance to the Project:**

This research supports the planned use of reports and a Microsoft Power BI dashboard to help business owners understand sales performance and make informed decisions.

### Source 3: Rwanda Business Statistics Report

**Reference:**

National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

**Source Type:** Government Statistical Report

**Key Findings:**

The report estimates that Rwanda had 260,780 business enterprises in 2023. It reports that approximately 88% of business enterprises were informal.

Micro business enterprises employing 1–3 people accounted for 83.9% of all business activities, while wholesale and retail trade represented 54.6% of all business enterprises.

These statistics demonstrate the importance of micro and small businesses in Rwanda's business environment.

**Identified Gap:**

The report provides national business statistics but does not provide an operational database system for recording daily sales, tracking product costs, managing expenses, and calculating business profit.

**Relevance to the Project:**

The report provides local context for the project and supports the decision to focus on small and micro businesses, particularly those involved in retail activities.

### Source 4: Dataset – UCI Online Retail

**Reference:**

Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

**Dataset Link:**

https://archive.ics.uci.edu/dataset/352/online+retail

**Source Type:** Secondary Dataset

**Key Findings:**

The Online Retail dataset contains 541,909 transaction records from a UK-based online retailer, covering the period from December 2010 to December 2011.

The dataset contains eight columns, including:

- Invoice number.
- Product code.
- Product description.
- Quantity.
- Invoice date.
- Unit price.
- Customer ID.
- Country.

The dataset is available under the Creative Commons Attribution 4.0 International (CC BY 4.0) licence.

**Identified Gap:**

The dataset does not provide complete product purchase costs or business operating expenses. It therefore cannot independently support all the calculations required for complete business profit reporting.

It also contains cancelled transactions and other records that need to be inspected during data preparation.

**Relevance to the Project:**

The dataset will provide sample historical transaction data for developing and testing sales-related database operations.

Additional documented product cost and expense information will be required to support gross and net profit calculations.

### Source 5: Existing Business Management System – QuickBooks Online

**Reference:**

Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

**Source Type:** Existing Business Management System

**Key Findings:**

QuickBooks Online provides inventory management features that allow businesses to track available stock, receive restocking alerts, and view information about products they buy and sell.

These features demonstrate how accounting and inventory management software can support business operations.

**Identified Gap:**

QuickBooks Online is an existing commercial accounting solution. The proposed project will instead demonstrate a customized database solution developed using Oracle PL/SQL, with its own database tables, procedures, functions, triggers, and business rules.

**Relevance to the Project:**

This system provides an example of how inventory and sales information can be managed. Its features help identify useful functions to consider when designing the proposed system.

### Source 6: Technical Documentation – Oracle PL/SQL

**Reference:**

Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

**Additional Technical Reference:**

Oracle. (2026). *Oracle AI Database PL/SQL Language Reference, 26ai.* https://docs.oracle.com/en/database/oracle/oracle-database/26/lnpls/

**Source Type:** Official Technical Documentation

**Key Findings:**

Oracle documentation explains how PL/SQL supports server-side programming through procedures, functions, packages, cursors, collections, and exception handling.

It also explains how database triggers execute automatically in response to specified database events, such as insert, update, and delete operations.

**Identified Gap:**

The documentation explains Oracle database technologies but does not provide a complete sales and profit tracking solution specifically designed for small businesses.

**Relevance to the Project:**

This source provides technical guidance for implementing the proposed system using Oracle PL/SQL features, including procedures, functions, packages, cursors, triggers, and exception handling.


## 3. Overall Research Findings

The reviewed sources provide useful information about business records management, data-driven decision-making, the Rwandan business environment, available retail transaction data, existing inventory management software, and Oracle PL/SQL technologies.

The main findings are:

1. Proper business records management supports business performance evaluation and informed decision-making.
2. Analytics dashboards can help small businesses monitor performance and make more data-driven decisions.
3. Rwanda has a large number of micro and informal business enterprises, making small-business management an important area to consider.
4. Existing systems such as QuickBooks Online provide useful inventory management and business tracking features.
5. The UCI Online Retail dataset provides historical transaction records that can support sales-related database testing.
6. Oracle PL/SQL provides the programming features needed to implement database procedures, functions, triggers, packages, and exception handling.

However, the reviewed dataset does not provide all the product purchase costs and operating expenses required for complete profit calculations.

Therefore, additional documented cost and expense information will be needed.

## 4. Proposed Project Solution

The project will develop a **Small Business Sales and Profit Tracking System using Oracle PL/SQL**.

The system is intended to help small businesses organize product information, manage suppliers and customers, record sales, monitor inventory, record operating expenses, and calculate profit.

The planned database will contain eight main tables:

1. **SUPPLIERS:** Stores supplier information.
2. **CUSTOMERS:** Stores customer information.
3. **USERS:** Stores authorized system users and their roles.
4. **PRODUCTS:** Stores product details, selling prices, purchase costs, and stock quantities.
5. **SALES:** Stores general sales transaction information.
6. **SALE_DETAILS:** Stores individual products, quantities, selling prices, and unit costs included in each sale.
7. **EXPENSES:** Stores business operating expenses, including category, amount, and date.
8. **AUDIT_LOG:** Stores records of important database changes.

The tables will be connected through primary keys and foreign keys to maintain data consistency and referential integrity.

The final database structure may be refined during the database design and normalization phase.

## 5. Planned PL/SQL Features

The project plans to use the following Oracle PL/SQL features:

1. **Procedures:** To record sales, manage products, and record business expenses.
2. **Functions:** To calculate sales revenue, costs, and profit.
3. **Cursors:** To retrieve and process sales, product, and expense records.
4. **Packages:** To organize related procedures and functions.
5. **Triggers:** To automate selected database operations, update stock where appropriate, and maintain audit records.
6. **Exception Handling:** To manage invalid inputs, insufficient stock, missing products, and other database errors.
7. **Audit Logging:** To record selected changes made to important business data.

These features will help implement business rules and automate important database operations.

## 6. Planned Innovation

The planned innovation is an interactive **Analytics Dashboard using Microsoft Power BI**, connected to the Oracle database.

The dashboard is expected to display useful business information, including:

- Total sales revenue.
- Total operating expenses.
- Gross profit and net profit.
- Best-selling products.
- Current inventory levels.
- Monthly sales performance.
- Business performance trends.

The dashboard is planned to use information stored in the Oracle database rather than manually entered figures.

This feature will be implemented and demonstrated in a later project phase, subject to successful database integration.

## 7. Research Limitations and Next Steps

### 7.1 Research Limitations

The following limitations were identified during the research:

- The UCI Online Retail dataset does not contain complete product purchase costs and operating expenses.
- The dataset contains historical transactions and may not represent current Rwandan small-business activities.
- Some transactions, including cancellations, require inspection and appropriate handling during data preparation.
- Access to actual small-business records depends on permission from the business owner.
- Sample data may be required when actual business information is unavailable.
- The reviewed sources provide background information and technical guidance but do not constitute a complete solution for the proposed project.
- The planned Power BI dashboard has not yet been implemented.

### 7.2 Next Steps

The following activities will be carried out in the next project phases:

1. Download and inspect the original UCI Online Retail dataset.
2. Verify the dataset licence and document its source.
3. Identify and prepare documented product purchase cost and operating expense data.
4. Clean the dataset by inspecting missing values, duplicates, cancellations, and unusual records.
5. Identify the database entities, attributes, primary keys, and foreign keys.
6. Design and normalize the database tables.
7. Set up the Oracle database environment.
8. Develop the required PL/SQL procedures, functions, packages, triggers, and exception handling.
9. Test the system using appropriate sample and available transaction data.
10. Explore the connection between Oracle Database and Microsoft Power BI.


## 8. Conclusion

The research supports the development of a Small Business Sales and Profit Tracking System using Oracle PL/SQL.

The reviewed academic studies, Rwanda business statistics, existing business management software, UCI Online Retail dataset, and Oracle technical documentation provide a foundation for the project.

The proposed system will focus on organizing business records, managing products and customers, tracking sales and expenses, monitoring inventory, calculating profit, and maintaining an audit trail through a structured Oracle relational database.

The planned Microsoft Power BI dashboard will provide an additional way to present business information and support data-driven decision-making.

Overall, the research findings will guide the design and implementation of a practical database solution for small-business sales and profit tracking.

