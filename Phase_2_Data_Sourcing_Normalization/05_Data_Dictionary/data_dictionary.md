\# Data Dictionary

\## Small Business Sales and Profit Tracking System



The following data dictionary presents the preliminary database structure.



\### 1. CUSTOMERS



| Column | Data Type | Description |

|---|---|---|

| customer\_id | NUMBER | Unique customer identifier (PK) |

| country | VARCHAR2(100) | Customer's country |



\### 2. PRODUCTS



| Column | Data Type | Description |

|---|---|---|

| product\_id | VARCHAR2(50) | Unique product identifier (PK) |

| description | VARCHAR2(255) | Product description |



\### 3. SALES



| Column | Data Type | Description |

|---|---|---|

| invoice\_no | VARCHAR2(20) | Unique invoice number (PK) |

| invoice\_date | DATE | Date of the transaction |

| customer\_id | NUMBER | Customer identifier (FK) |



\### 4. SALE\_DETAILS



| Column | Data Type | Description |

|---|---|---|

| sale\_detail\_id | NUMBER | Unique detail identifier (PK) |

| invoice\_no | VARCHAR2(20) | Related invoice (FK) |

| product\_id | VARCHAR2(50) | Related product (FK) |

| quantity | NUMBER | Quantity sold |

| unit\_sale\_price | NUMBER(10,2) | Selling price per item |



\### 5. EXPENSES



| Column | Data Type | Description |

|---|---|---|

| expense\_id | NUMBER | Unique expense identifier (PK) |

| expense\_date | DATE | Date of expense |

| description | VARCHAR2(255) | Expense description |

| amount | NUMBER(10,2) | Expense amount |



\### 6. SUPPLIERS



| Column | Data Type | Description |

|---|---|---|

| supplier\_id | NUMBER | Unique supplier identifier (PK) |

| supplier\_name | VARCHAR2(150) | Supplier name |

| contact\_information | VARCHAR2(255) | Supplier contact details |



\### 7. USERS



| Column | Data Type | Description |

|---|---|---|

| user\_id | NUMBER | Unique user identifier (PK) |

| username | VARCHAR2(100) | System username |

| role | VARCHAR2(50) | User role |



\### 8. AUDIT\_LOG



| Column | Data Type | Description |

|---|---|---|

| audit\_id | NUMBER | Unique audit record identifier (PK) |

| user\_id | NUMBER | User who performed the action (FK) |

| action | VARCHAR2(255) | Description of the action |

| action\_date | TIMESTAMP | Date and time of the action |



\## Important Note

These are preliminary data types and structures. They must be checked against the actual dataset before final implementation. The additional business tables require separately collected records.

