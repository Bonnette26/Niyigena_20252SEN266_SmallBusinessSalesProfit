# Database Normalization

## 1. Unnormalized Form (UNF)

The original Online Retail dataset stores invoice, product, customer, and sales information in one table.

Each record contains invoice details, product details, quantity, unit price, customer information, and country.

### Sample Raw Data

| InvoiceNo | StockCode | Description | Quantity | InvoiceDate | UnitPrice | CustomerID | Country |
|---|---|---|---:|---|---:|---|---|
| 536365 | 85123A | White hanging heart T-light holder | 6 | 2010-12-01 | 2.55 | 17850 | United Kingdom |
| 536365 | 71053 | White metal lantern | 6 | 2010-12-01 | 3.39 | 17850 | United Kingdom |
| 536365 | 84406B | Cream Cupid Hearts Coat Hanger | 8 | 2010-12-01 | 2.75 | 17850 | United Kingdom |

### Explanation

In UNF, all information is stored in one table. Invoice information, customer information, and product information are mixed together. When an invoice contains several products, invoice and customer information are repeated across multiple rows.

## 2. First Normal Form (1NF)

To achieve 1NF:

- Each cell must contain only one value.
- Each row must represent one product transaction.
- Each record must be uniquely identifiable.

The original Online Retail dataset already follows the single-value-per-cell structure.

### Sample Data in 1NF

| InvoiceNo | StockCode | Description | Quantity | InvoiceDate | UnitPrice | CustomerID | Country |
|---|---|---|---:|---|---:|---|---|
| 536365 | 85123A | White hanging heart T-light holder | 6 | 2010-12-01 | 2.55 | 17850 | United Kingdom |
| 536365 | 71053 | White metal lantern | 6 | 2010-12-01 | 3.39 | 17850 | United Kingdom |
| 536365 | 84406B | Cream Cupid Hearts Coat Hanger | 8 | 2010-12-01 | 2.75 | 17850 | United Kingdom |

### Dependency Removed

Each product transaction is represented as a separate row, rather than storing multiple products in one field or repeating group.

### Result

The dataset satisfies 1NF because each field contains a single value and each row represents one product line.

## 3. Second Normal Form (2NF)

To achieve 2NF, the database must first satisfy 1NF. Every non-key attribute must depend on the whole primary key, not only part of it.

The proposed composite key for the transaction-line data is:

**(InvoiceNo, StockCode)**

The combination was checked in the working dataset by filling the COUNTIFS formula down the records. The results were 1 for the combinations checked.

### Decomposition into Tables

#### INVOICES

| InvoiceNo (PK) | InvoiceDate | CustomerID | Country |
|---|---|---|---|
| 536365 | 2010-12-01 | 17850 | United Kingdom |

#### PRODUCTS

| StockCode (PK) | Description |
|---|---|
| 85123A | White hanging heart T-light holder |
| 71053 | White metal lantern |
| 84406B | Cream Cupid Hearts Coat Hanger |

#### INVOICE_DETAILS

| InvoiceNo (PK, FK) | StockCode (PK, FK) | Quantity | UnitPrice |
|---|---|---:|---:|
| 536365 | 85123A | 6 | 2.55 |
| 536365 | 71053 | 6 | 3.39 |
| 536365 | 84406B | 8 | 2.75 |

### Dependency Removed

InvoiceDate, CustomerID, and Country depend on InvoiceNo, while Description depends on StockCode. Separating invoice information and product information removes partial dependencies from the transaction-line table.

### Result

The data is divided into INVOICES, PRODUCTS, and INVOICE_DETAILS to reduce unnecessary repetition.

## 4. Third Normal Form (3NF)

To achieve 3NF, the database must satisfy 2NF and remove transitive dependencies.

Customer information and country information are separated into their own tables. A CountryID foreign key is used to connect customers to countries.

### Final Tables in 3NF

#### COUNTRIES

| CountryID (PK) | CountryName |
|---|---|
| 1 | United Kingdom |

#### CUSTOMERS

| CustomerID (PK) | CountryID (FK) |
|---|---|
| 17850 | 1 |

#### INVOICES

| InvoiceNo (PK) | InvoiceDate | CustomerID (FK) |
|---|---|---|
| 536365 | 2010-12-01 | 17850 |

#### PRODUCTS

| StockCode (PK) | Description |
|---|---|
| 85123A | White hanging heart T-light holder |
| 71053 | White metal lantern |
| 84406B | Cream Cupid Hearts Coat Hanger |

#### INVOICE_DETAILS

| InvoiceNo (PK, FK) | StockCode (PK, FK) | Quantity | UnitPrice |
|---|---|---:|---:|
| 536365 | 85123A | 6 | 2.55 |
| 536365 | 71053 | 6 | 3.39 |
| 536365 | 84406B | 8 | 2.75 |

### Dependency Removed

Country information is stored once in COUNTRIES and referenced through CountryID in CUSTOMERS. Customer information is stored separately from INVOICES, reducing repeated customer details across invoices.

### Result

The proposed 3NF design contains five related tables:

1. COUNTRIES
2. CUSTOMERS
3. INVOICES
4. PRODUCTS
5. INVOICE_DETAILS

This structure reduces data repetition and improves data organization.

## 5. Normalization Summary

| Normal Form | Main Improvement |
|---|---|
| UNF | All information is stored in one table. |
| 1NF | Each cell contains one value and each row represents one product line. |
| 2NF | Invoice and product attributes are separated to remove partial dependencies. |
| 3NF | Customer and country information are separated to reduce transitive dependencies. |

## 6. Design Notes and Assumptions

- InvoiceNo identifies each invoice.
- StockCode identifies each product.
- InvoiceNo and StockCode form the proposed composite primary key of INVOICE_DETAILS.
- CustomerID is optional in INVOICES because some source records have missing CustomerID values.
- CountryID is a new identifier introduced during database design; it does not exist in the original dataset.
- The relationship CustomerID to Country must be verified across all customers before final implementation.
- The sample rows must be checked against the original Excel dataset.
- The raw dataset remains unchanged during Phase II.
- Data cleaning and transformation will be performed during Phase IV.