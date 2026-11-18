# Dataset Card

## 1. Dataset Information

- **Dataset Name:** Online Retail
- **Source:** UCI Machine Learning Repository
- **Source URL:** https://archive.ics.uci.edu/dataset/352/online-retail
- **Dataset Author:** Daqing Chen
- **Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0)
- **Format:** Excel (.xlsx)
- **Number of Records:** 541,909
- **Number of Columns:** 8
- **Period Covered:** 2010–2011
- **Date Collected:** [Enter the actual date you downloaded the dataset]

## 2. What One Record Represents

Each record represents one product line within an invoice. An invoice may contain multiple products, so the same InvoiceNo can appear in several records.

## 3. Columns

1. InvoiceNo
2. StockCode
3. Description
4. Quantity
5. InvoiceDate
6. UnitPrice
7. CustomerID
8. Country

## 4. Data Quality Report

The initial inspection identified the following data quality issues:

| Data Quality Issue | Number of Records |
|---|---:|
| Missing CustomerID | 135,080 |
| Missing Description | 1,454 |
| Negative Quantity | 10,624 |
| Zero UnitPrice | 2,515 |
| Cancelled invoice records (InvoiceNo starts with C) | 9,288 |
| Missing InvoiceDate | 0 |

Additional observations:

- InvoiceNo values are repeated because one invoice can contain multiple product lines.
- For example, InvoiceNo 536365 appears 7 times.
- Repeated InvoiceNo values do not necessarily mean duplicate records.
- The duplicate-check formula returned 0, but a full duplicate-row verification has not yet been confirmed.

## 5. Data Cleaning

The original raw dataset has not been modified. Data cleaning and transformation will be performed during Phase IV. The original ZIP file is preserved in the raw folder, while the extracted Excel file is kept in the working_copy folder.

## 6. Dataset Limitations

The dataset contains product quantities and selling prices, but it does not contain product cost or operating expense information. Therefore, actual net profit cannot be calculated from this dataset alone.

## 7. Dataset Citation

Chen, D. (2015). *Online Retail* [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5BW33