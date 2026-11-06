# PROJECT PROPOSAL

## Small Business Sales and Profit Tracking System Using Oracle PL/SQL

**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266  
**Course:** INSY 8311 – Database Development with PL/SQL  
**Academic Year:** 2026–2027  
**Instructor:** Eric Maniraguha

### 1. Problem Statement

Many small businesses face difficulties managing daily sales, monitoring product stock, recording expenses, and calculating profits accurately. Manual record-keeping can cause calculation errors, missing transaction records, and difficulties in understanding business performance.

There is a need for a reliable database system that can organize business transactions, automate calculations, and provide useful reports for decision-making.

### 2. Proposed Solution

This project proposes a Small Business Sales and Profit Tracking System developed using Oracle Database and PL/SQL.

The system will manage product information, record sales and expenses, update stock quantities, and calculate financial results. It will also generate reports to help business owners understand their sales performance and expenses.

### 3. Data Source

The project plans to use the UCI Online Retail dataset:

https://archive.ics.uci.edu/dataset/352/online+retail

The dataset contains 541,909 transaction records from a UK-based online retailer. It includes transaction information such as invoice numbers, product codes, quantities, dates, and unit prices.

Since the dataset does not directly provide all product costs and operating expenses, additional documented cost and expense data will be required to support profit calculations. The dataset licence and suitability will be verified before final data loading.

### 4. Planned Tables

The project will initially use four main tables:

- **PRODUCTS:** Stores product names, selling prices, costs, and stock quantities.
- **SALES:** Stores sales transactions, quantities, and historical selling prices and costs.
- **EXPENSES:** Stores business operating expenses and dates.
- **AUDIT_LOG:** Records important database changes for accountability.

### 5. Planned PL/SQL Features

- **Procedures:** Register products, record sales, and record expenses.
- **Functions:** Calculate total revenue, total expenses, and profit.
- **Cursors:** Retrieve and display sales and expense reports.
- **Packages:** Organize related procedures and functions.
- **Triggers:** Automatically update product stock and record database changes.
- **Exceptions:** Handle invalid quantities, missing products, and other transaction errors.

### 6. Innovation

**Option:** Analytics Dashboard  
**Tool:** Microsoft Power BI

The project will connect Power BI to the Oracle database to display actual business information through an interactive dashboard.

The dashboard will show total sales, total expenses, profit, monthly sales trends, and product performance. It will help users understand business performance without manually calculating every result.

### 7. Expected Results

The expected result is a working Oracle database system that manages products, sales, expenses, and stock. It will automatically calculate financial results, maintain an audit trail, and provide reports through an interactive dashboard.

The project will demonstrate how database technology can improve record management and financial decision-making in small businesses.

### 8. References

1. Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. https://doi.org/10.1371/journal.pone.0264135
2. Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science*. https://doi.org/10.1287/mnsc.2021.02026
3. National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* https://statistics.gov.rw/
4. UCI Machine Learning Repository. (n.d.). *Online Retail* [Dataset]. https://archive.ics.uci.edu/dataset/352/online+retail
5. Intuit. (n.d.). *QuickBooks Online inventory management documentation.* https://quickbooks.intuit.com/
6. Oracle. (n.d.). *Oracle Database 26ai documentation.* https://docs.oracle.com/en/database/oracle/oracle-database/26/
