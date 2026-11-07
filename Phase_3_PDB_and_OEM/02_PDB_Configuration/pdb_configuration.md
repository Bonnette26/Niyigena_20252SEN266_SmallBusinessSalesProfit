\# Phase III: PDB Configuration



\## 1. Administrator Account



A database administrator named `SBSP\_ADMIN` was created during PDB creation.



The administrator account was verified successfully.



```sql

SELECT username, account\_status

FROM dba\_users

WHERE username = 'SBSP\_ADMIN';

```



Result:

\- Username: SBSP\_ADMIN

\- Account Status: OPEN



\## 2. User Privileges



The following privileges were granted to SBSP\_ADMIN:



```sql

GRANT CREATE SESSION,

&#x20;     CREATE TABLE,

&#x20;     CREATE VIEW,

&#x20;     CREATE SEQUENCE,

&#x20;     CREATE PROCEDURE,

&#x20;     CREATE TRIGGER,

&#x20;     CREATE TYPE

TO SBSP\_ADMIN;

```



\## 3. Tablespace Configuration



A USERS tablespace was created because the default USERS tablespace was not available in the new PDB.



\- Tablespace: USERS

\- Initial size: 100 MB

\- Autoextend: Enabled

\- Maximum size: 2 GB



\## 4. Storage Quota



Unlimited quota on the USERS tablespace was granted to SBSP\_ADMIN.



```sql

ALTER USER SBSP\_ADMIN QUOTA UNLIMITED ON USERS;

```



\## 5. Connection Verification



The administrator successfully connected to the new PDB.



```sql

SHOW USER;

SHOW CON\_NAME;

```



Results:

\- User: SBSP\_ADMIN

\- Container: SBSP\_PDB\_20252SEN266



\## 6. Table Creation Test



A temporary test table was successfully created and dropped to verify that the administrator could create database tables.



```sql

CREATE TABLE test\_connection (

&#x20;   test\_id NUMBER PRIMARY KEY,

&#x20;   test\_message VARCHAR2(100)

);



DROP TABLE test\_connection;

```



Both operations completed successfully.



\## 7. Conclusion



The PDB administrator account, privileges, tablespace, and storage quota were configured successfully. The administrator connection and table creation capabilities were also tested.

