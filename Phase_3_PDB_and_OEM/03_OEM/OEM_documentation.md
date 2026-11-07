# Oracle Enterprise Manager (OEM) Documentation

## 1. Introduction

This section documents the database management tools available for the Small Business Sales and Profit Tracking System.

## 2. Oracle Environment

- **Database:** Oracle AI Database 26ai Free
- **Operating System:** Windows 11
- **PDB:** SBSP_PDB_20252SEN266
- **PDB Status:** READ WRITE
- **Management Tool:** Oracle SQL Developer

## 3. OEM Availability

Oracle Database 26ai Free does not provide the older Enterprise Manager Express interface.

Therefore, the traditional EM Express dashboard was not available for this project. No OEM dashboard screenshot is claimed.

## 4. Alternative Management Tool

Oracle SQL Developer can be used to connect to and manage the database.

The connection uses:

- **Connection Name:** SBSP_PDB
- **Username:** SBSP_ADMIN
- **Hostname:** localhost
- **Port:** 1521
- **Service Name:** SBSP_PDB_20252SEN266

The database administrator can use SQL Developer to execute SQL statements, inspect tables, and manage database objects.

## 5. Conclusion

The project PDB was successfully created, opened, and configured. Since the traditional OEM Express interface is unavailable in Oracle Database 26ai Free, SQL Developer is documented as the alternative database management tool.