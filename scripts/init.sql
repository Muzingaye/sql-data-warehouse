/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    with 3 database schemas : 'bronze', 'silver', and 'gold'.
*/
USE master;
GO
-- Create the 'DataWarehouse' database if it does not exist

IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE DataWarehouse;
END;
GO

-- Switch to the 'DataWarehouse' database
USE DataWarehouse;
GO

-- Create schema 'bronze' if it does not exist
IF NOT EXISTS (SELECT schema_id FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
END;
GO

-- Create schema 'silver' if it does not exist
IF NOT EXISTS (SELECT schema_id FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
END;
GO

-- Create schema 'gold' if it does not exist
IF NOT EXISTS (SELECT schema_id FROM sys.schemas WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
END;
GO
