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

The project research will examine:

- Research on business record management.
- Research on data-driven decisions in small businesses.
- Rwanda business statistics.
- Existing inventory and accounting systems such as QuickBooks.
- Oracle PL/SQL documentation.

**Identified project gap**

The proposed project will develop a customized Oracle database solution that combines sales, expenses, stock management, profit calculations, and transaction auditing.

*Note: Add verified research findings and citations after reading the six sources in the research log.*

---

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

The system will initially contain four main tables:

1. **PRODUCTS:** Product details, selling prices, costs, and stock.
2. **SALES:** Sales transactions, quantities, and historical prices and costs.
3. **EXPENSES:** Business operating expenses.
4. **AUDIT_LOG:** Important database changes.

Relationships:
- One product can have many sales transactions.
- Sales records reference products.
- Audit records keep track of important database activities.

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

### Slide 12: References

Include the verified APA references from:

1. Research paper on business record management.
2. Research paper on data-driven small businesses.
3. National Institute of Statistics of Rwanda business report.
4. UCI Online Retail dataset.
5. QuickBooks inventory documentation.
6. Oracle Database 26ai documentation.

Full references and links will be provided in `docs/research/research_log.md`.

---

**Thank You**
