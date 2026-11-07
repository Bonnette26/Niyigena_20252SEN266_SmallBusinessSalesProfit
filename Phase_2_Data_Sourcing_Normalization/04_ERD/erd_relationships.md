\# Preliminary Entity Relationship Diagram (ERD)



\## 1. Entities and Relationships



\### CUSTOMERS

\- customer\_id (PK)

\- country



\### PRODUCTS

\- product\_id (PK)

\- description



\### SALES

\- invoice\_no (PK)

\- invoice\_date

\- customer\_id (FK)



\### SALE\_DETAILS

\- sale\_detail\_id (PK)

\- invoice\_no (FK)

\- product\_id (FK)

\- quantity

\- unit\_sale\_price



\### EXPENSES

\- expense\_id (PK)

\- expense\_date

\- description

\- amount



\### SUPPLIERS

\- supplier\_id (PK)

\- supplier\_name

\- contact\_information



\### USERS

\- user\_id (PK)

\- username

\- role



\### AUDIT\_LOG

\- audit\_id (PK)

\- user\_id (FK)

\- action

\- action\_date



\## 2. Relationships

\- One customer can have many sales.

\- One sale can contain many sale details.

\- One product can appear in many sale details.

\- One user can generate many audit log records.



\## 3. Important Note

This is a preliminary ERD. The structure will be reviewed after inspecting the original dataset and confirming the final business requirements. The additional entities require separately collected business or system records.

