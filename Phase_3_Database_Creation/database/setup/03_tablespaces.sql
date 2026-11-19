
-- =====================================================
-- Name: NIYIGENA Bonnette
-- Student ID: 20252SEN266
-- Group: I
-- Project: Small Business Sales and Profit Tracking System
-- File: 03_tablespaces.sql
-- Purpose: Create data, index and temporary tablespaces
-- =====================================================

SET ECHO ON

-- Switch to the project PDB
ALTER SESSION SET CONTAINER = I_20252SEN266_BONNETTE_SBS_DB;

-- Create data tablespace: 100 MB, maximum 1 GB
CREATE TABLESPACE sbs_data
DATAFILE 'C:\APP\BELYZE\PRODUCT\26AI\ORADATA\FREE\I_20252SEN266_BONNETTE_SBS_DB\SBS_DATA01.DBF'
SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE 1G;

-- Create index tablespace: 50 MB, maximum 500 MB
CREATE TABLESPACE sbs_idx
DATAFILE 'C:\APP\BELYZE\PRODUCT\26AI\ORADATA\FREE\I_20252SEN266_BONNETTE_SBS_DB\SBS_IDX01.DBF'
SIZE 50M
AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

-- Create temporary tablespace: 50 MB, maximum 500 MB
CREATE TEMPORARY TABLESPACE sbs_temp
TEMPFILE 'C:\APP\BELYZE\PRODUCT\26AI\ORADATA\FREE\I_20252SEN266_BONNETTE_SBS_DB\SBS_TEMP01.DBF'
SIZE 50M
AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

-- Set administrator default and temporary tablespaces
ALTER USER bonnette_admin
DEFAULT TABLESPACE sbs_data
TEMPORARY TABLESPACE sbs_temp;

-- Grant unlimited quota on data and index tablespaces
ALTER USER bonnette_admin QUOTA UNLIMITED ON sbs_data;
ALTER USER bonnette_admin QUOTA UNLIMITED ON sbs_idx;
