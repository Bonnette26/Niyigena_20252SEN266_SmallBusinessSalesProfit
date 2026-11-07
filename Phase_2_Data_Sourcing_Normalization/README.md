# Phase II: Data Sourcing and Normalization

## 1. Introduction

This phase focuses on identifying, obtaining, analyzing, and preparing a real-world dataset for the Small Business Sales and Profit Tracking System.

The main objective is to examine the selected dataset, assess its quality, identify data issues, and design a normalized relational database structure.

## 2. Project Dataset

The project uses the **Online Retail Dataset** from the UCI Machine Learning Repository.

| Item | Details |
|---|---|
| Dataset Name | Online Retail Dataset |
| Original Source | UCI Machine Learning Repository |
| Official URL | https://archive.ics.uci.edu/dataset/352/online+retail |
| File Name | Online Retail.xlsx |
| Number of Records | 541,909 |
| Number of Columns | 8 |
| License | CC BY 4.0 |

**Download Note:** The dataset was retrieved through a GitHub mirror because the original UCI download was unavailable during retrieval. The downloaded file is attributed to the UCI dataset, but it has not yet been independently compared with the original UCI file.

## 3. Dataset Attributes

The dataset contains eight attributes:

| Attribute | Description |
|---|---|
| InvoiceNo | Invoice or transaction number |
| StockCode | Product identification code |
| Description | Product description |
| Quantity | Quantity purchased |
| InvoiceDate | Date and time of transaction |
| UnitPrice | Price per unit |
| CustomerID | Customer identification number |
| Country | Customer's country |

## 4. Data Quality Assessment

The dataset was opened and inspected using Microsoft Excel.

The following checks were performed:
- Record and column count verification.
- Missing value identification using `COUNTBLANK`.
- Initial duplicate record inspection.
- Cancelled transaction identification using `COUNTIF`.

### 4.1 Missing Values

| Column | Missing Values |
|---|---:|
| InvoiceNo | 0 |
| StockCode | 12,838 |
| Description | 0 |
| Quantity | 0 |
| InvoiceDate | 0 |
| UnitPrice | 0 |
| CustomerID | 17,920 |
| Country | 0 |

### 4.2 Duplicate Records

An initial duplicate inspection was performed using Microsoft Excel on a copy of the worksheet.

- Reported duplicate rows: 0.
- Original dataset preserved.

Further verification using all eight columns together is still required.

### 4.3 Cancelled Transactions

Cancelled transactions were identified using invoice numbers beginning with the letter `C`.

The following Excel formula was used:

```excel
=COUNTIF(A2:A541910,"C*")
```

**Cancelled transaction rows identified: 145.**

These records will be investigated before database loading.

## 5. Normalization

The database design aims to achieve Third Normal Form (3NF).

The proposed database consists of eight main tables:

1. CUSTOMERS
2. PRODUCTS
3. SALES
4. SALE_DETAILS
5. EXPENSES
6. SUPPLIERS
7. USERS
8. AUDIT_LOG

Normalization is intended to:
- Reduce data redundancy.
- Improve data consistency.
- Establish primary and foreign key relationships.
- Organize business information into related tables.

Some proposed entities, such as EXPENSES, SUPPLIERS, USERS, and AUDIT_LOG, require additional authentic business or system data because they are not included in the selected Online Retail dataset.

## 6. Entity Relationship Diagram (ERD)

The Entity Relationship Diagram presents the proposed database tables, attributes, primary keys, foreign keys, and relationships.

The ERD files are:

- `04_ERD/small_business_erd.drawio`
- `04_ERD/small_business_erd.png`

The diagram includes relationships between customers, sales, sale details, products, suppliers, and users.

## 7. Data Dictionary

The data dictionary describes the proposed database tables and their attributes.

It includes:
- Table names.
- Column names.
- Data types.
- Primary keys.
- Foreign keys.
- Column descriptions.

File:

`05_Data_Dictionary/data_dictionary.md`

## 8. Project Folder Structure

```text
Phase_2_Data_Sourcing_Normalization/
│
├── README.md
│
├── 01_Data_Source/
│   └── data_source.md
│
├── 02_Raw_Data/
│   ├── Online Retail.xlsx
│   └── raw_data_status.md
│
├── 03_Normalization/
│   └── normalization_plan.md
│
├── 04_ERD/
│   ├── erd_relationships.md
│   ├── small_business_erd.drawio
│   └── small_business_erd.png
│
├── 05_Data_Dictionary/
│   └── data_dictionary.md
│
└── 06_Screenshots/
    └── small_business_erd.png
```

## 9. Data Cleaning Plan

Before importing the dataset into Oracle Database, the following activities will be completed:

1. Investigate missing StockCode values.
2. Investigate missing CustomerID values.
3. Verify duplicate records using all eight columns.
4. Review cancelled transactions.
5. Preserve the original raw dataset.
6. Document data cleaning decisions.

No records will be removed without a documented reason.

## 10. Conclusion

Phase II establishes the foundation for the database design and implementation of the Small Business Sales and Profit Tracking System.

The selected dataset provides real retail transaction information. The initial data quality assessment has identified missing values and cancelled transactions that require further investigation.

The proposed normalized database structure and ERD will guide the next stages of Oracle database development.

**Current Status:** Dataset sourcing, initial inspection, preliminary normalization planning, ERD preparation, and data dictionary preparation have been completed. Further validation and cleaning remain pending.