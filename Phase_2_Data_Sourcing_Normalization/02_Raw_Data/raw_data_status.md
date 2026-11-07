# Raw Dataset Status Report

## 1. Dataset Information

- **Dataset Name:** Online Retail Dataset
- **Original Source:** UCI Machine Learning Repository
- **Official Dataset URL:** https://archive.ics.uci.edu/dataset/352/online+retail
- **File Name:** Online Retail.xlsx
- **File Size:** 23,715,344 bytes
- **Total Records:** 541,909
- **Number of Columns:** 8
- **License:** CC BY 4.0

**Download Information:**

The dataset was retrieved through a GitHub mirror because the original UCI download was unavailable during retrieval. The dataset is attributed to the UCI Machine Learning Repository. The downloaded file has not yet been independently compared with the original UCI file.

## 2. Dataset Columns

The dataset contains the following eight attributes:

| Column | Description |
|---|---|
| InvoiceNo | Invoice or transaction number |
| StockCode | Product identification code |
| Description | Product description |
| Quantity | Quantity purchased |
| InvoiceDate | Date and time of transaction |
| UnitPrice | Price per unit |
| CustomerID | Customer identification number |
| Country | Customer's country |

## 3. Missing Values Assessment

The dataset was inspected using Microsoft Excel. The `COUNTBLANK` function was used to identify missing values.

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
| **Total Missing Cells** | **30,758** |

## 4. Duplicate Records Assessment

An initial duplicate check was performed in Microsoft Excel using Conditional Formatting and the Remove Duplicates feature on a copy of the worksheet.

- **Reported duplicate rows:** 0
- **Original dataset:** Preserved without intentional modification.

Note: The duplicate check should be repeated using all eight columns together to confirm that complete duplicate records are absent.

## 5. Cancelled Transactions Assessment

Cancelled transactions were identified using the `InvoiceNo` column.

In the Online Retail dataset, invoice numbers beginning with the letter `C` indicate cancellations.

The following Excel formula was used:

```excel
=COUNTIF(A2:A541910,"C*")
```

- **Cancelled transaction rows identified:** 145

These records will be investigated and handled appropriately during data preparation. They will not be automatically deleted.

## 6. Data Quality Findings

The initial assessment identified the following issues:

1. Some records have missing StockCode values.
2. Some records have missing CustomerID values.
3. Cancelled transactions are present in the dataset.
4. The other six columns have no missing values according to the Excel checks.
5. Complete duplicate records were not identified in the initial check, but further verification is required.

## 7. Data Cleaning Plan

Before importing the dataset into Oracle Database, the following actions will be considered:

- Investigate missing StockCode values.
- Investigate missing CustomerID values.
- Preserve transactions with missing customer identification where appropriate.
- Identify and handle cancelled transactions according to the business rules.
- Verify duplicate records using all eight columns.
- Preserve the original raw dataset.
- Document all data cleaning decisions.

No original records will be deleted or modified without a documented reason.

## 8. Current Dataset Status

**Status:** Downloaded, opened successfully in Microsoft Excel, and initially inspected.

**Completed Activities:**
- Confirmed the dataset file opens successfully.
- Confirmed 541,909 records.
- Confirmed eight columns.
- Checked missing values.
- Performed an initial duplicate check.
- Identified 145 cancelled transaction rows.

**Pending Activities:**
- Further verification of duplicate records.
- Investigation of missing values.
- Final data cleaning.
- Preparation for Oracle database loading.

## 9. Conclusion

The Online Retail Dataset provides real-world retail transaction information that is relevant to the Small Business Sales and Profit Tracking System.

The initial data quality assessment provides a foundation for cleaning, normalization, and subsequent Oracle database implementation.

