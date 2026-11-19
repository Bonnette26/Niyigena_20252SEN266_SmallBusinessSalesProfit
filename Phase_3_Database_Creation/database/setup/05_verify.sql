
-- =====================================================
-- Name: NIYIGENA Bonnette
-- Student ID: 20252SEN266
-- Group: I
-- Project: Small Business Sales and Profit Tracking System
-- File: 05_verify.sql
-- Purpose: Verify PDB, admin, tablespaces and archive mode
-- =====================================================

SET ECHO ON

-- 1. Verify PDB status from CDB$ROOT
ALTER SESSION SET CONTAINER = CDB$ROOT;

SELECT NAME, OPEN_MODE
FROM V$PDBS
WHERE NAME = 'I_20252SEN266_BONNETTE_SBS_DB';

-- 2. Switch to the project PDB
ALTER SESSION SET CONTAINER = I_20252SEN266_BONNETTE_SBS_DB;

-- 3. Verify admin account and tablespaces
SELECT USERNAME, ACCOUNT_STATUS,
       DEFAULT_TABLESPACE, TEMPORARY_TABLESPACE
FROM DBA_USERS
WHERE USERNAME = 'BONNETTE_ADMIN';

-- 4. Verify admin roles
SELECT GRANTEE, GRANTED_ROLE
FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'BONNETTE_ADMIN';

-- 5. Verify data and index tablespaces
SELECT TABLESPACE_NAME, FILE_NAME,
       BYTES / 1024 / 1024 AS SIZE_MB,
       AUTOEXTENSIBLE,
       INCREMENT_BY * (SELECT VALUE
                       FROM V$PARAMETER
                       WHERE NAME = 'db_block_size') / 1024 / 1024 AS NEXT_MB,
       MAXBYTES / 1024 / 1024 AS MAX_SIZE_MB
FROM DBA_DATA_FILES
WHERE TABLESPACE_NAME IN ('SBS_DATA', 'SBS_IDX');

-- 6. Verify temporary tablespace
SELECT TABLESPACE_NAME, FILE_NAME,
       BYTES / 1024 / 1024 AS SIZE_MB,
       AUTOEXTENSIBLE,
       MAXBYTES / 1024 / 1024 AS MAX_SIZE_MB
FROM DBA_TEMP_FILES
WHERE TABLESPACE_NAME = 'SBS_TEMP';

-- 7. Verify unlimited quotas
SELECT TABLESPACE_NAME, MAX_BYTES
FROM DBA_TS_QUOTAS
WHERE USERNAME = 'BONNETTE_ADMIN';

-- 8. Return to CDB$ROOT and verify ARCHIVELOG
ALTER SESSION SET CONTAINER = CDB$ROOT;

SELECT LOG_MODE FROM V$DATABASE;

