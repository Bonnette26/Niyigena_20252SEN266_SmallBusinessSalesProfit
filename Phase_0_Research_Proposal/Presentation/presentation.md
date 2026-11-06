# Phase 0 Presentation
## Small Business Sales and Profit Tracking System Using Oracle PL/SQL

### Slide 1: Title
**Small Business Sales and Profit Tracking System Using Oracle PL/SQL**

- Student: NIYIGENA Bonnette
- Student ID: 20252SEN266
- Course: INSY 8311 – Database Development with PL/SQL
- Instructor: Eric Maniraguha
- Academic Year: 2026–2027
- GitHub: https://github.com/Bonnette26/Niyigena_20252SEN266_SmallBusinessSalesProfit

---

### Slide 2: Background and Problem

Many small businesses experience difficulties managing their daily transactions.

Main problems:
- Manual recording of sales.
- Difficulty tracking product stock.
- Poor tracking of business expenses.
- Errors when calculating profit.
- Difficulty generating financial reports.

These problems can affect business decisions and financial management.

---

### Slide 3: Motivation

I chose this project because small businesses need reliable ways to manage their daily financial activities.

This project aims to:
- Improve business record management.
- Reduce manual calculation errors.
- Make sales and expenses easier to track.
- Support better business decisions.

---

### Slide 4: Project Objectives

**Main Objective**

To develop an Oracle PL/SQL-based system for managing sales, expenses, stock, and profit calculations.

**Specific Objectives**
1. Create a database for products, sales, and expenses.
2. Automate sales recording and stock updates.
3. Calculate revenue, expenses, and profit.
4. Generate business performance reports.
5. Maintain an audit trail of important changes.

---

### Slide 5: Research and Existing Solutions

**Key research findings:**

- **Mintah et al. (2022):** Proper business records management is strongly linked to business growth. Businesses that keep organized records make better management decisions.
- **Bar-Gill et al. (2024):** A field experiment on eBay found that providing small businesses with an analytics dashboard increased data-driven decision-making and raised average e-retailer revenue by **3.6%**.
- **NISR (2025):** Rwanda had **260,780 business enterprises** in 2023. **88% were informal**, and micro businesses (1–3 employees) accounted for **83.9%** of business activities. Wholesale and retail trade represented **54.6%** of all enterprises.
- **QuickBooks Online (Intuit, 2026):** Provides inventory tracking and restocking alerts, but it is a commercial accounting product, not a customized database solution.
- **Oracle (n.d.):** PL/SQL supports procedures, functions, packages, cursors, triggers, and exception handling for server-side business logic.

**Identified gaps:**
- Existing tools are commercial (QuickBooks) or generic (eBay dashboard), not tailored to small retail businesses in Rwanda.
- The UCI Online Retail dataset lacks complete product costs and operating expenses.
- No reviewed system combines sales, expenses, stock control, profit calculation, and auditing in one customized Oracle PL/SQL database.

**This project fills the gap** by building a customized Oracle PL/SQL system that integrates sales, expenses, inventory, profit calculation, and audit logging.

### Slide 6: Data Source

**Proposed dataset:** UCI Online Retail

Link: https://archive.ics.uci.edu/dataset/352/online+retail

Dataset information:
- 541,909 transaction records.
- Online retail transaction data.
- Includes invoice numbers, product codes, quantities, dates, and unit prices.

**Limitation:** The dataset does not directly contain all product costs and operating expenses. Additional documented data will be needed for complete profit calculations.

*Dataset licence, downloaded file, and sample records must be verified before final submission.*

---

### Slide 7: Proposed Solution and Innovation

**Proposed Solution**

An Oracle PL/SQL database system that manages products, sales, expenses, stock, and profit calculations.

**Innovation Option:** Analytics Dashboard

**Planned Tool:** Microsoft Power BI

The dashboard will connect to the Oracle database and display:
- Total sales.
- Total expenses.
- Total profit.
- Monthly sales trends.
- Product performance.

The dashboard will use actual database data.

---

### Slide 8: Planned Database Design

The system will contain **seven main tables**:

| Table | Purpose |
|---|---|
| **PRODUCTS** | Product details, selling prices, purchase costs, and stock quantities |
| **SALES** | General sales transaction information (date, total) |
| **SALE_DETAILS** | Individual products and quantities in each sale |
| **EXPENSES** | Business operating expenses (category, amount, date) |
| **SUPPLIERS** | Supplier information linked to products |
| **USERS** | Authorized system users and roles |
| **AUDIT_LOG** | Records of important database changes |

**Relationships:**
- One **SUPPLIER** supplies many **PRODUCTS** (1:N).
- One **SALE** contains many **SALE_DETAILS** (1:N).
- One **PRODUCT** appears in many **SALE_DETAILS** (1:N).
- One **USER** records many **SALES** (1:N).
- **AUDIT_LOG** records changes to PRODUCTS, SALES, and EXPENSES.

All tables are connected through primary and foreign keys to maintain data consistency.

---

### Slide 9: PL/SQL Approach

| PL/SQL Feature | Planned Use |
|---|---|
| Procedures | Register products, record sales, and expenses |
| Functions | Calculate revenue, expenses, and profit |
| Cursors | Display sales and expense reports |
| Packages | Organize related procedures and functions |
| Triggers | Update stock and record database changes |
| Exceptions | Handle invalid quantities and missing products |

Business rules will be implemented in PL/SQL.

---

### Slide 10: Expected Results

The project is expected to produce:

- A working Oracle database.
- Product and sales management.
- Expense recording.
- Automatic stock updates.
- Accurate financial calculations.
- Sales and expense reports.
- An interactive dashboard connected to Oracle.

---

### Slide 11: Future Improvements and Limitations

**Future Improvements**
- Add user authentication and role management.
- Add more detailed financial reports.
- Support additional business branches.
- Introduce sales forecasting.

**Limitations**
- The selected retail dataset may not include all expense and cost information.
- The dashboard requires a working connection to Oracle.
- The initial version will focus on core business operations.

---

### Slide 12: References (APA)

Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science, 70*(11), 7345–7372. https://doi.org/10.1287/mnsc.2021.02026

Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33

Intuit. (2026, June 17). *Set up and track your inventory in QuickBooks Online.* https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US

Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135

National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023

Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle AI Database 26ai Concepts. https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html

**Thank You**
