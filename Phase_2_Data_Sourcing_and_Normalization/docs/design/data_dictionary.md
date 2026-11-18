## 1. COUNTRIES Table

Stores the list of countries associated with customers.

| Column | Description | Key | Required | Unique |
|---|---|---|---|---|
| CountryID | Identifies each country | PK | Yes | Yes |
| CountryName | Name of the country | None | Yes | Yes |

## 2. CUSTOMERS Table

Stores information about customers.

| Column | Description | Key | Required | Unique |
|---|---|---|---|---|
| CustomerID | Identifies each customer | PK | Yes | Yes |
| CountryID | Identifies the customer's country | FK | Yes* | No |

*CountryID is required when a customer has a known country.

## 3. INVOICES Table

Stores general invoice information.

| Column | Description | Key | Required | Unique |
|---|---|---|---|---|
| InvoiceNo | Identifies each invoice | PK | Yes | Yes |
| InvoiceDate | Date of the invoice | None | Yes | No |
| CustomerID | Identifies the customer associated with the invoice | FK | No | No |

## 4. PRODUCTS Table

Stores product information.

| Column | Description | Key | Required | Unique |
|---|---|---|---|---|
| StockCode | Identifies each product | PK | Yes | Yes |
| Description | Description of the product | None | No | No |

## 5. INVOICE_DETAILS Table

Stores products included in each invoice.

| Column | Description | Key | Required | Unique |
|---|---|---|---|---|
| InvoiceNo | Identifies the invoice | PK, FK | Yes | No |
| StockCode | Identifies the product | PK, FK | Yes | No |
| Quantity | Number of product units in the transaction | None | Yes | No |
| UnitPrice | Price per product unit | None | Yes | No |

The composite primary key is (InvoiceNo, StockCode).

## 6. Raw Data to 3NF Mapping

| Original Column | Target Table | Target Column |
|---|---|---|
| InvoiceNo | INVOICES | InvoiceNo |
| InvoiceDate | INVOICES | InvoiceDate |
| CustomerID | CUSTOMERS and INVOICES | CustomerID |
| Country | COUNTRIES | CountryName |
| StockCode | PRODUCTS and INVOICE_DETAILS | StockCode |
| Description | PRODUCTS | Description |
| Quantity | INVOICE_DETAILS | Quantity |
| UnitPrice | INVOICE_DETAILS | UnitPrice |