# Phase IV: Tables and Data Loading

## Project Information

- **Project Title:** Small Business Sales and Profit Tracking System
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Student:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Database:** Oracle AI Database 26ai Free
- **PDB:** SBSP_PDB_20252SEN266

## 1. Phase Overview

Phase IV focuses on creating the database tables, loading the source dataset into a staging table, and validating the imported data.

The project uses the UCI Online Retail dataset, which contains 541,909 transaction records.

## 2. Database Tables

The project schema contains eight tables:

1. SUPPLIERS – Stores supplier information.
2. CUSTOMERS – Stores customer information.
3. PRODUCTS – Stores product information.
4. USERS – Stores application user information.
5. SALES – Stores invoice information.
6. SALE_DETAILS – Stores individual products and quantities in each invoice.
7. EXPENSES – Stores business operating expenses.
8. AUDIT_LOG – Stores application activity records.

## 2.1 Constraints and Automatic ID Generation

The eight database tables were created successfully with appropriate database constraints.

The schema includes:
- Primary key constraints to uniquely identify records.
- Foreign key constraints to maintain relationships between tables.
- Unique constraints to prevent duplicate identifiers.
- Check constraints to enforce valid data values.

Oracle identity columns were configured for automatic ID generation in seven tables:

- SUPPLIERS
- CUSTOMERS
- PRODUCTS
- USERS
- SALE_DETAILS
- EXPENSES
- AUDIT_LOG

The SALES table uses the source invoice number as its primary key.

No additional manual sequences were required because Oracle manages ID generation through identity columns.

## 3. Data Source

**Dataset:** UCI Online Retail

Source: https://archive.ics.uci.edu/dataset/352/online%2Bretail

The dataset contains:
- Invoice number
- Stock code
- Product description
- Quantity
- Invoice date
- Unit price
- Customer ID
- Country

The source dataset does not contain product purchase costs, supplier details, or operating expenses. Therefore, these values are not fabricated.

## 4. Data Loading

The original Excel dataset was converted into CSV format and imported into:

`STG_ONLINE_RETAIL_RAW`

Total imported records: **541,909**

The staging table preserves the original source values for validation before transformation into the main database tables.

## 5. Data Validation Results

| Validation | Result |
|---|---:|
| Total records | 541,909 |
| Missing StockCode | 0 |
| Missing CustomerID | 135,079 |
| Missing Description | 1,453 |
| Cancellation rows | 9,287 |
| Negative quantity rows | 10,624 |
| Invalid Quantity values | 0 |
| Invalid UnitPrice values | 0 |
| Invalid dates | 0 |
| Invoices with multiple calendar dates | 0 |

### Customer ID Anomalies

Five records contain `CUSTOMERID = '0'`:

- Invoice 536412: 3 records
- Invoice 536414: 1 record
- Invoice 536415: 1 record

These records are preserved in the staging table. The value `0` is treated as an unresolved customer identifier and is not assumed to represent a valid customer.

## 6. Validation Scripts

The following SQL scripts are included:

- `01_table_validation.sql`
- `02_record_count_validation.sql`
- `03_relationship_validation.sql`

They check table creation, imported record counts, missing values, numeric values, dates, cancellations, returns, and relationship anomalies.

## 7. Screenshots

The `04_Screenshots` folder contains evidence of:
- Table creation
- Table validation
- Imported record count
- Missing value checks
- Cancellation and return checks
- Sample staging records
- Numeric validation
- Date validation

## 8. Important Data Limitations

The UCI Online Retail dataset does not provide purchase costs, supplier information, or operating expenses. Consequently, actual net profit cannot be calculated from this dataset alone.

The original staging data is preserved so that missing and unusual source values are not silently deleted or changed.

## 9. Conclusion

Phase IV establishes the database table structure, imports the 541,909 source records into a staging table, and performs initial data validation. The validation results and identified anomalies are documented for the next project phase.