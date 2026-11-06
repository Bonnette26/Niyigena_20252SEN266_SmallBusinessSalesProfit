# DATA SOURCES DOCUMENTATION

## Project Title
**Small Business Sales and Profit Tracking System**

**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266  
**Course Code:** INSY 8311  
**Course Name:** Database Development with PL/SQL

---

## 1. Introduction

This document describes the data sources required for the development of the Small Business Sales and Profit Tracking System.

The project focuses on helping small businesses manage their products, record daily sales, track business expenses, and calculate profits accurately.

The collected data will be used to design and implement an Oracle database that supports sales management, expense tracking, and profit analysis.

## 2. Data Requirements

The system requires the following categories of data:

### 2.1 Product Data

Product data will be used to manage the products available in the business.

Required information:
- Product ID
- Product name
- Product category
- Purchase cost
- Selling price
- Available quantity

### 2.2 Sales Data

Sales data will be used to record transactions made by customers.

Required information:
- Sale ID
- Sale date
- Product ID
- Quantity sold
- Selling price
- Total sales amount

### 2.3 Expense Data

Expense data will help the business monitor its operating costs.

Required information:
- Expense ID
- Expense date
- Expense description
- Expense category
- Expense amount

### 2.4 Audit Data

Audit data will help track important activities and changes performed in the database.

Required information:
- Audit ID
- Operation performed
- Table affected
- Date and time
- User responsible for the operation

## 3. Data Sources

The project will use the following data sources:

### 3.1 Primary Data Sources

Primary data will be collected directly from a small business, with permission from the business owner.

Examples include:
- Product records.
- Daily sales records.
- Purchase costs.
- Selling prices.
- Business operating expenses.

These records will help ensure that the database represents real small-business operations.

### 3.2 Secondary Data Sources

Secondary data may be obtained from publicly available datasets and business-related research materials.

These sources will be used to support the research and, where appropriate, provide additional sample records for database testing.

**Dataset source:** To be completed after selecting and verifying the actual dataset.

**Dataset URL:** To be added after verification.

## 4. Database Tables

The project uses the following seven database tables:

| Table | Purpose |
|---|---|
| PRODUCTS | Stores product details, selling prices, purchase costs, and stock quantities. |
| SALES | Stores general sales transaction information. |
| SALE_DETAILS | Stores individual products and quantities included in each sale. |
| EXPENSES | Records business operating expenses. |
| SUPPLIERS | Stores supplier information. |
| USERS | Stores authorized system user information. |
| AUDIT_LOG | Records selected changes made to important database records. |

## 5. Data Collection Methods

The following methods will be used to obtain the required information:

1. Reviewing available business sales records.
2. Reviewing product and inventory records.
3. Collecting business expense records.
4. Consulting publicly available datasets where necessary.
5. Recording the source and collection date of each dataset.

All private business information will be collected with permission and sensitive information will be excluded or anonymized.

## 6. Data Quality and Preparation

Before loading the data into Oracle Database, the following activities will be performed:

- Removing duplicate records.
- Checking missing values.
- Correcting inconsistent formats.
- Checking invalid product prices and quantities.
- Verifying sales and expense amounts.
- Organizing data for database normalization.

## 7. Relationship to the Database

The collected data will support the main components of the proposed database:

- PRODUCTS: Stores product information.
- SALES: Stores sales transaction information.
- EXPENSES: Stores business expense information.
- AUDIT_LOG: Records important database activities.

The data structure will be refined during Phase II to ensure proper normalization and relationships between tables.

## 8. Profit Calculation

The system will use the collected sales and cost information to calculate business profit.

**Gross Profit:**

Gross Profit = Total Sales Revenue - Cost of Goods Sold

**Net Profit:**

Net Profit = Gross Profit - Operating Expenses

These calculations will help small business owners understand their financial performance.

## 9. Data Privacy and Ethical Considerations

- Business records will only be collected with appropriate permission.
- Private customer information will not be exposed.
- Sensitive information will be anonymized.
- Public datasets will be acknowledged and referenced.
- Data will only be used for academic project purposes.

## 10. Conclusion

The selected data sources will provide the necessary information to develop the Small Business Sales and Profit Tracking System.

The collected data will support database design, normalization, Oracle implementation, PL/SQL development, and financial reporting.

This documentation establishes the data requirements for Phase 0 and provides a foundation for Phase II: Data Sourcing and Normalization.