-- Dummy schema for disposable Cypress environments; no production data.
IF DB_ID(N'cypress_test') IS NULL
    CREATE DATABASE cypress_test;
GO

USE cypress_test;
GO

IF OBJECT_ID(N'dbo.cypress_smoke', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.cypress_smoke (
        id INT NOT NULL PRIMARY KEY,
        label NVARCHAR(100) NOT NULL,
        created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );
END;
GO

IF NOT EXISTS (SELECT 1 FROM dbo.cypress_smoke WHERE id = 1)
    INSERT INTO dbo.cypress_smoke (id, label) VALUES (1, N'Dummy test record');
GO
