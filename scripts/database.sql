-- =========================================================
-- Script: Database and Schema Initialization
-- =========================================================
-- Purpose:
-- This script sets up the environment for the Data Warehousing project.
-- It creates the main database `DataWarehousing` and three schemas:
-- `bronze`, `silver`, and `gold`, representing the layered architecture
-- used in modern data warehouses.
--
-- Warning:
-- This script will DROP the entire `DataWarehousing` database if it already
-- exists. Running this script will permanently delete all existing tables,
-- schemas, and data inside the database. Make sure you have backed up any
-- important data before executing this script.
-- =========================================================

-- Drop the database if it already exists
DROP DATABASE IF EXISTS DataWarehousing;

-- Create the main database
CREATE DATABASE IF NOT EXISTS DataWarehousing;

-- Use the database
USE DataWarehousing;

-- ============================================
-- Create Schemas (Layers)
-- ============================================

-- Bronze Layer: Raw data from source systems
CREATE SCHEMA IF NOT EXISTS bronze;

-- Silver Layer: Cleaned and transformed data
CREATE SCHEMA IF NOT EXISTS silver;

-- Gold Layer: Business-ready data for analytics
CREATE SCHEMA IF NOT EXISTS gold;

SHOW DATABASES;
SHOW SCHEMAS;
