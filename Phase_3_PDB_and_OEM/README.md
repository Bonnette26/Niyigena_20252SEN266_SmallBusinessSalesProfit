# Phase III – PDB Creation and OEM Documentation

## 1. Project Information

- **Project:** Small Business Sales and Profit Tracking System
- **Course:** INSY 8311 – Database Development with PL/SQL
- **Student:** NIYIGENA Bonnette
- **Student ID:** 20252SEN266
- **Database:** Oracle AI Database 26ai Free
- **PDB Name:** SBSP_PDB_20252SEN266

## 2. Phase Objective

The objective of this phase was to create and configure an Oracle Pluggable Database (PDB), create an administrative user, configure database permissions, and document database management tools.

## 3. PDB Creation

The PDB `SBSP_PDB_20252SEN266` was successfully created.

Its status was verified as:

- Open Mode: READ WRITE
- Restricted: NO

See `01_PDB_Creation/pdb_creation_documentation.md`.

## 4. PDB Configuration

The following configuration tasks were completed:

- Created the administrative user `SBSP_ADMIN`.
- Granted required database privileges.
- Created the USERS tablespace.
- Configured the user's tablespace quota.
- Tested database login.
- Successfully created and dropped a test table.

See `02_PDB_Configuration/pdb_configuration.md`.

## 5. OEM and Database Management

The traditional Enterprise Manager Express interface was not available in the Oracle AI Database 26ai Free environment used for this project.

Oracle SQL Developer was used as an alternative database management tool. The connection and SQL execution were successfully tested.

See `03_OEM/OEM_documentation.md`.

## 6. Screenshot Evidence

The `05_Screenshots` folder contains:

1. `01_pdb_status.png` – PDB status.
2. `02_admin_user.png` – Administrative user verification.
3. `03_pdb_connection.png` – PDB connection context.
4. `04_users_tablespace.png` – USERS tablespace verification.
5. `05_admin_privileges.png` – Administrative privileges.
6. `06_pdb_datafiles.png` – PDB datafiles.
7. `07_admin_login.png` – Administrative login.
8. `08_sql_developer_connection.png` – SQL Developer connection.
9. `09_sql_developer_pdb_status.png` – SQL Developer PDB verification.

## 7. Conclusion

The PDB was successfully created, opened, and configured. The administrative account was tested, and Oracle SQL Developer successfully connected to the project PDB.

Phase III provides the database environment required for the next project phases.