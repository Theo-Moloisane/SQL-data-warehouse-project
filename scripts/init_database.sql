USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databses WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  --Create DataWarehouse--
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO
  --Create Schemas--
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
