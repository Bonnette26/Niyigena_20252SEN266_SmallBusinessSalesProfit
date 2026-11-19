
-- =====================================================
-- Name: NIYIGENA Bonnette
-- Student ID: 20252SEN266
-- Group: I
-- Project: Small Business Sales and Profit Tracking System
-- File: 04_archive_log.sql
-- Purpose: Check ARCHIVELOG mode and explain its scope
-- =====================================================

-- ARCHIVELOG mode is configured at the CDB level.
-- It cannot be enabled for only one PDB.
-- All PDBs in a CDB share the CDB's redo log configuration.
-- Changing this setting affects the entire CDB.
-- Therefore, this script only checks the current mode.

ARCHIVE LOG LIST;
