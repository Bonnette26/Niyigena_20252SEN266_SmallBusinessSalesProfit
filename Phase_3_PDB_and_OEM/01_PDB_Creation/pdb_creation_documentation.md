\# Phase III: Pluggable Database (PDB) Creation



\## 1. Introduction



This phase documents the creation and configuration of a new Pluggable Database (PDB) for the Small Business Sales and Profit Tracking System.



\## 2. Database Environment



\- Database: Oracle AI Database 26ai Free

\- Version: 23.26.0.0.0

\- Operating System: Windows 11

\- CDB: FREE

\- New PDB Name: SBSP\_PDB\_20252SEN266

\- Administrator: SBSP\_ADMIN



\## 3. PDB Creation



The PDB was created from PDB$SEED using the following SQL command:



```sql

CREATE PLUGGABLE DATABASE SBSP\_PDB\_20252SEN266

ADMIN USER SBSP\_ADMIN

IDENTIFIED BY "\[PASSWORD NOT INCLUDED]"

FILE\_NAME\_CONVERT = (

'C:\\APP\\BELYZE\\PRODUCT\\26AI\\ORADATA\\FREE\\PDBSEED\\',

'C:\\APP\\BELYZE\\PRODUCT\\26AI\\ORADATA\\FREE\\SBSP\_PDB\_20252SEN266\\'

);

```



Result: Pluggable database created successfully.



\## 4. Opening the PDB



```sql

ALTER PLUGGABLE DATABASE SBSP\_PDB\_20252SEN266 OPEN;

```



Result: Pluggable database altered.



\## 5. Saving the PDB State



```sql

ALTER PLUGGABLE DATABASE SBSP\_PDB\_20252SEN266 SAVE STATE;

```



This ensures that the PDB automatically opens when the CDB starts.



\## 6. Verification



The following command was used to verify the PDB:



```sql

SHOW PDBS;

```



The PDB was confirmed with the following status:



\- Name: SBSP\_PDB\_20252SEN266

\- Open Mode: READ WRITE

\- Restricted: NO



\## 7. Conclusion



The new PDB was successfully created, opened, and configured. It is ready to support the Small Business Sales and Profit Tracking System.

