ALTER DATABASE Masking_AdventureWorks SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_AdventureWorksDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_AdventureWorksLT SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_Northwind SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_WideWorldImporters SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_WideWorldImportersDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_Chinook SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_Contoso SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_BigSchoolDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_BiggerSchoolDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Masking_Validation SET SINGLE_USER WITH ROLLBACK IMMEDIATE


DROP DATABASE IF EXISTS Masking_AdventureWorks
DROP DATABASE IF EXISTS Masking_AdventureWorksDW
DROP DATABASE IF EXISTS Masking_AdventureWorksLT
DROP DATABASE IF EXISTS Masking_Northwind
DROP DATABASE IF EXISTS Masking_WideWorldImporters
DROP DATABASE IF EXISTS Masking_WideWorldImportersDW
DROP DATABASE IF EXISTS Masking_Chinook
DROP DATABASE IF EXISTS Masking_Contoso
DROP DATABASE IF EXISTS Masking_BigSchoolDB
DROP DATABASE IF EXISTS Masking_BiggerSchoolDB
DROP DATABASE IF EXISTS Masking_Validation


RESTORE DATABASE Masking_AdventureWorks
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorks2025.bak'
WITH
    MOVE 'AdventureWorks' TO 'D:\SQLServer\Data\Masking_AdventureWorks.mdf',
    MOVE 'AdventureWorks_log' TO 'D:\SQLServer\Logs\Masking_AdventureWorks.ldf',
    REPLACE;

RESTORE DATABASE Masking_AdventureWorksDW
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksDW2025.bak'
WITH
    MOVE 'AdventureWorksDW' TO 'D:\SQLServer\Data\Masking_AdventureWorksDW.mdf',
    MOVE 'AdventureWorksDW_log' TO 'D:\SQLServer\Logs\Masking_AdventureWorksDW.ldf',
    REPLACE;

RESTORE DATABASE Masking_AdventureWorksLT
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksLT2025.bak'
WITH
    MOVE 'AdventureWorksLT2022_Data' TO 'D:\SQLServer\Data\Masking_AdventureWorksLT.mdf',
    MOVE 'AdventureWorksLT2022_log' TO 'D:\SQLServer\Logs\Masking_AdventureWorksLT.ldf',
    REPLACE;

RESTORE DATABASE Masking_Northwind
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Northwind.bak'
WITH
    MOVE 'Northwind' TO 'D:\SQLServer\Data\Masking_Northwind.mdf',
    MOVE 'Northwind_log' TO 'D:\SQLServer\Logs\Masking_Northwind.ldf',
    REPLACE;

RESTORE DATABASE Masking_WideWorldImporters
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImporters.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Masking_WideWorldImporters.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Masking_WideWorldImporters2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Masking_WideWorldImporters.ldf',
    MOVE 'WWI_InMemory_Data_1' TO 'D:\SQLServer\Logs\Masking_WideWorldImporters_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Masking_WideWorldImportersDW
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImportersDW.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Masking_WideWorldImportersDW.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Masking_WideWorldImportersDW2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Masking_WideWorldImportersDW.ldf',
    MOVE 'WWIDW_InMemory_Data_1' TO 'D:\SQLServer\Logs\Masking_WideWorldImportersDW_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Masking_Chinook
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Chinook.bak'
WITH
    MOVE 'Chinook' TO 'D:\SQLServer\Data\Masking_Chinook.mdf',
    MOVE 'Chinook_log' TO 'D:\SQLServer\Logs\Masking_Chinook.ldf',
    REPLACE;

RESTORE DATABASE Masking_Contoso
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Contoso.bak'
WITH
    MOVE 'Contoso' TO 'D:\SQLServer\Data\Masking_Contoso.mdf',
    MOVE 'Contoso_log' TO 'D:\SQLServer\Logs\Masking_Contoso.ldf',
    REPLACE;
    
RESTORE DATABASE Masking_BigSchoolDB
FROM DISK = 'D:\SQLServer\Backups\BigSchoolDB.bak'
WITH
    MOVE 'BigSchoolDB' TO 'D:\SQLServer\Data\Masking_BigSchoolDB.mdf',
    MOVE 'BigSchoolDB_log' TO 'D:\SQLServer\Logs\Masking_BigSchoolDB.ldf',
    REPLACE;

RESTORE DATABASE Masking_BiggerSchoolDB
FROM DISK = 'D:\SQLServer\Backups\BiggerSchoolDB.bak'
WITH
    MOVE 'BiggerSchoolDB' TO 'D:\SQLServer\Data\Masking_BiggerSchoolDB.mdf',
    MOVE 'BiggerSchoolDB_log' TO 'D:\SQLServer\Logs\Masking_BiggerSchoolDB.ldf',
    REPLACE;

RESTORE DATABASE Masking_Validation
FROM DISK = 'D:\SQLServer\Backups\Masking\Masking_Validation.bak'
WITH
    MOVE 'Masking_Validation' TO 'D:\SQLServer\Data\Masking_Validation.mdf',
    MOVE 'Masking_Validation_log' TO 'D:\SQLServer\Logs\Masking_Validation.ldf',
    REPLACE;
