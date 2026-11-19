
-- =====================================================
-- Name: NIYIGENA Bonnette
-- Student ID: 20252SEN266
-- Group: I
-- Project: Small Business Sales and Profit Tracking System
-- File: 02_create_user.sql
-- Purpose: Configure and verify the PDB administrator
-- =====================================================

SET ECHO ON

-- Connect to the project PDB
ALTER SESSION SET CONTAINER = I_20252SEN266_BONNETTE_SBS_DB;

-- Grant the required DBA role
GRANT DBA TO bonnette_admin;

-- Verify administrator account
SELECT USERNAME, ACCOUNT_STATUS
FROM DBA_USERS
WHERE USERNAME = 'BONNETTE_ADMIN';

-- Verify granted roles
SELECT GRANTEE, GRANTED_ROLE
FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'BONNETTE_ADMIN';
