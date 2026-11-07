\# Database Normalization Plan



\## 1. Introduction

Normalization is the process of organizing database tables to reduce data duplication and improve data integrity.



\## 2. First Normal Form (1NF)

Each table will contain atomic values. Each record will have a unique identifier, and repeating groups will be eliminated.



\## 3. Second Normal Form (2NF)

The design will first satisfy 1NF. Non-key attributes will depend on the whole primary key. Product and customer information will be separated from transaction details.



\## 4. Third Normal Form (3NF)

The design will first satisfy 2NF. Non-key attributes will depend only on the primary key. Independent information, such as product and customer details, will be stored in separate tables.



\## 5. Proposed Tables

The preliminary design includes:



1\. CUSTOMERS – Stores customer identifiers and country information.

2\. PRODUCTS – Stores product codes and descriptions.

3\. SALES – Stores invoice numbers and transaction dates.

4\. SALE\_DETAILS – Stores products, quantities, and unit selling prices for each invoice.

5\. EXPENSES – Stores business operating expenses collected separately.

6\. SUPPLIERS – Stores supplier information collected separately.

7\. USERS – Stores authorized system users.

8\. AUDIT\_LOG – Records important system activities.



\## 6. Important Note

This is a preliminary normalization plan based on the official dataset description. The final 1NF, 2NF, and 3NF design will be validated after downloading and inspecting the original dataset.



Some proposed tables, including EXPENSES, SUPPLIERS, USERS, and AUDIT\_LOG, are not directly provided by the Online Retail dataset. They will require separate authentic business or system records.

