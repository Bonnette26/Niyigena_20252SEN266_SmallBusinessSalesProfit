# Data Loading Documentation

## 1. Dataset Information

- **Dataset:** UCI Online Retail
- **Source:** https://archive.ics.uci.edu/dataset/352/online%2Bretail
- **Original format:** Excel (.xlsx)
- **Imported format:** CSV (.csv)
- **Total records:** 541,909

## 2. Data Preparation

The original Excel dataset was copied into the Phase IV data loading folder.

It was then converted into CSV format to support importing into Oracle Database.

The CSV file contains eight columns:

1. InvoiceNo
2. StockCode
3. Description
4. Quantity
5. InvoiceDate
6. UnitPrice
7. CustomerID
8. Country

## 3. Staging Table

The data was imported into the Oracle staging table:

`STG_ONLINE_RETAIL_RAW`

All eight columns were initially defined as VARCHAR2 to preserve the imported source values and allow validation before conversion.

## 4. Import Process

The import was performed using Oracle SQL Developer's Import Data wizard.

The following settings were used:

- Import method: Insert
- File format: CSV
- Delimiter: Comma
- Text enclosure: Double quotation mark
- Header row: Recognized
- Target table: STG_ONLINE_RETAIL_RAW

The import completed successfully with 541,909 records.

## 5. Data Quality Checks

The following checks were performed:

- Total imported records
- Missing StockCode, CustomerID, and Description
- Cancellation invoices
- Negative quantities
- Invalid numeric values
- Invalid invoice dates
- Invoice and customer relationship anomalies

## 6. Validation Findings

The validation identified:

- 135,079 records with missing CustomerID.
- 1,453 records with missing Description.
- 9,287 cancellation rows.
- 10,624 rows with negative quantities.
- Five records with CustomerID equal to `0`.

No invalid Quantity values, UnitPrice values, or invoice dates were detected.

## 7. Data Preservation

The original source records were preserved in the staging table.

Cancellation transactions, negative quantities, missing customer identifiers, and other unusual values were not deleted during the initial import.

The value `CUSTOMERID = '0'` is documented as an unresolved identifier rather than assumed to be a valid customer.

## 8. Conclusion

The CSV import was successful. All 541,909 records were loaded into `STG_ONLINE_RETAIL_RAW`, and initial data quality checks were completed.