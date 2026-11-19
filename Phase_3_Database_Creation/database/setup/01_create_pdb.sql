-- =====================================================
-- Name: NIYIGENA Bonnette
-- Student ID: 20252SEN266
-- Group: I
-- Project: Small Business Sales and Profit Tracking System
-- File: 01_create_pdb.sql
-- Purpose: Create, open and save the PDB state
-- =====================================================

SET ECHO ON

-- Check the current container
SHOW CON_NAME;

-- Create the Pluggable Database
CREATE PLUGGABLE DATABASE i_20252sen266_bonnette_sbs_db
    ADMIN USER bonnette_admin
    IDENTIFIED BY "auca"
    ROLES = (DBA)
    FILE_NAME_CONVERT = (
        'C:\APP\BELYZE\PRODUCT\26AI\ORADATA\FREE\PDBSEED\',
        'C:\APP\BELYZE\PRODUCT\26AI\ORADATA\FREE\i_20252sen266_bonnette_sbs_db\'
    );

-- Open the PDB
ALTER PLUGGABLE DATABASE i_20252sen266_bonnette_sbs_db
OPEN READ WRITE;

-- Save the PDB open state
ALTER PLUGGABLE DATABASE i_20252sen266_bonnette_sbs_db
SAVE STATE;

-- Display PDB information
SHOW PDBS; yigire uko