ALTER DATABASE Subsetting_AdventureWorks_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_AdventureWorks_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_AdventureWorksDW_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_AdventureWorksDW_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_AdventureWorksLT_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_AdventureWorksLT_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Northwind_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Northwind_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_WideWorldImporters_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_WideWorldImporters_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_WideWorldImportersDW_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_WideWorldImportersDW_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Chinook_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Chinook_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Contoso_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_Contoso_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_BigSchoolDB_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_BigSchoolDB_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_BiggerSchoolDB_Source SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Subsetting_BiggerSchoolDB_Target SET SINGLE_USER WITH ROLLBACK IMMEDIATE


DROP DATABASE IF EXISTS Subsetting_AdventureWorks_Source
DROP DATABASE IF EXISTS Subsetting_AdventureWorks_Target
DROP DATABASE IF EXISTS Subsetting_AdventureWorksDW_Source
DROP DATABASE IF EXISTS Subsetting_AdventureWorksDW_Target
DROP DATABASE IF EXISTS Subsetting_AdventureWorksLT_Source
DROP DATABASE IF EXISTS Subsetting_AdventureWorksLT_Target
DROP DATABASE IF EXISTS Subsetting_Northwind_Source
DROP DATABASE IF EXISTS Subsetting_Northwind_Target
DROP DATABASE IF EXISTS Subsetting_WideWorldImporters_Source
DROP DATABASE IF EXISTS Subsetting_WideWorldImporters_Target
DROP DATABASE IF EXISTS Subsetting_WideWorldImportersDW_Source
DROP DATABASE IF EXISTS Subsetting_WideWorldImportersDW_Target
DROP DATABASE IF EXISTS Subsetting_Chinook_Source
DROP DATABASE IF EXISTS Subsetting_Chinook_Target
DROP DATABASE IF EXISTS Subsetting_Contoso_Source
DROP DATABASE IF EXISTS Subsetting_Contoso_Target
DROP DATABASE IF EXISTS Subsetting_BigSchoolDB_Source
DROP DATABASE IF EXISTS Subsetting_BigSchoolDB_Target
DROP DATABASE IF EXISTS Subsetting_BiggerSchoolDB_Source
DROP DATABASE IF EXISTS Subsetting_BiggerSchoolDB_Target


RESTORE DATABASE Subsetting_AdventureWorks_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorks2025.bak'
WITH
    MOVE 'AdventureWorks' TO 'D:\SQLServer\Data\Subsetting_AdventureWorks_Source.mdf',
    MOVE 'AdventureWorks_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorks_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_AdventureWorks_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorks2025.bak'
WITH
    MOVE 'AdventureWorks' TO 'D:\SQLServer\Data\Subsetting_AdventureWorks_Target.mdf',
    MOVE 'AdventureWorks_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorks_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_AdventureWorksDW_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksDW2025.bak'
WITH
    MOVE 'AdventureWorksDW' TO 'D:\SQLServer\Data\Subsetting_AdventureWorksDW_Source.mdf',
    MOVE 'AdventureWorksDW_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorksDW_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_AdventureWorksDW_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksDW2025.bak'
WITH
    MOVE 'AdventureWorksDW' TO 'D:\SQLServer\Data\Subsetting_AdventureWorksDW_Target.mdf',
    MOVE 'AdventureWorksDW_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorksDW_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_AdventureWorksLT_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksLT2025.bak'
WITH
    MOVE 'AdventureWorksLT2022_Data' TO 'D:\SQLServer\Data\Subsetting_AdventureWorksLT_Source.mdf',
    MOVE 'AdventureWorksLT2022_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorksLT_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_AdventureWorksLT_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksLT2025.bak'
WITH
    MOVE 'AdventureWorksLT2022_Data' TO 'D:\SQLServer\Data\Subsetting_AdventureWorksLT_Target.mdf',
    MOVE 'AdventureWorksLT2022_log' TO 'D:\SQLServer\Logs\Subsetting_AdventureWorksLT_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Northwind_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Northwind.bak'
WITH
    MOVE 'Northwind' TO 'D:\SQLServer\Data\Subsetting_Northwind_Source.mdf',
    MOVE 'Northwind_log' TO 'D:\SQLServer\Logs\Subsetting_Northwind_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Northwind_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Northwind.bak'
WITH
    MOVE 'Northwind' TO 'D:\SQLServer\Data\Subsetting_Northwind_Target.mdf',
    MOVE 'Northwind_log' TO 'D:\SQLServer\Logs\Subsetting_Northwind_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_WideWorldImporters_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImporters.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Subsetting_WideWorldImporters_Source.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Source2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Source.ldf',
    MOVE 'WWI_InMemory_Data_1' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Source_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_WideWorldImporters_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImporters.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Subsetting_WideWorldImporters_Target.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Target2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Target.ldf',
    MOVE 'WWI_InMemory_Data_1' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImporters_Target_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_WideWorldImportersDW_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImportersDW.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Subsetting_WideWorldImportersDW_Source.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Source2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Source.ldf',
    MOVE 'WWIDW_InMemory_Data_1' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Source_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_WideWorldImportersDW_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImportersDW.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Subsetting_WideWorldImportersDW_Target.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Target2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Target.ldf',
    MOVE 'WWIDW_InMemory_Data_1' TO 'D:\SQLServer\Logs\Subsetting_WideWorldImportersDW_Target_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Chinook_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Chinook.bak'
WITH
    MOVE 'Chinook' TO 'D:\SQLServer\Data\Subsetting_Chinook_Source.mdf',
    MOVE 'Chinook_log' TO 'D:\SQLServer\Logs\Subsetting_Chinook_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Chinook_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Chinook.bak'
WITH
    MOVE 'Chinook' TO 'D:\SQLServer\Data\Subsetting_Chinook_Target.mdf',
    MOVE 'Chinook_log' TO 'D:\SQLServer\Logs\Subsetting_Chinook_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Contoso_Source
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Contoso.bak'
WITH
    MOVE 'Contoso' TO 'D:\SQLServer\Data\Subsetting_Contoso_Source.mdf',
    MOVE 'Contoso_log' TO 'D:\SQLServer\Logs\Subsetting_Contoso_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_Contoso_Target
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Contoso.bak'
WITH
    MOVE 'Contoso' TO 'D:\SQLServer\Data\Subsetting_Contoso_Target.mdf',
    MOVE 'Contoso_log' TO 'D:\SQLServer\Logs\Subsetting_Contoso_Target.ldf',
    REPLACE;
    
RESTORE DATABASE Subsetting_BigSchoolDB_Source
FROM DISK = 'D:\SQLServer\Backups\BigSchoolDB.bak'
WITH
    MOVE 'BigSchoolDB' TO 'D:\SQLServer\Data\Subsetting_BigSchoolDB_Source.mdf',
    MOVE 'BigSchoolDB_log' TO 'D:\SQLServer\Logs\Subsetting_BigSchoolDB_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_BigSchoolDB_Target
FROM DISK = 'D:\SQLServer\Backups\BigSchoolDB.bak'
WITH
    MOVE 'BigSchoolDB' TO 'D:\SQLServer\Data\Subsetting_BigSchoolDB_Target.mdf',
    MOVE 'BigSchoolDB_log' TO 'D:\SQLServer\Logs\Subsetting_BigSchoolDB_Target.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_BiggerSchoolDB_Source
FROM DISK = 'D:\SQLServer\Backups\BiggerSchoolDB.bak'
WITH
    MOVE 'BiggerSchoolDB' TO 'D:\SQLServer\Data\Subsetting_BiggerSchoolDB_Source.mdf',
    MOVE 'BiggerSchoolDB_log' TO 'D:\SQLServer\Logs\Subsetting_BiggerSchoolDB_Source.ldf',
    REPLACE;

RESTORE DATABASE Subsetting_BiggerSchoolDB_Target
FROM DISK = 'D:\SQLServer\Backups\BiggerSchoolDB.bak'
WITH
    MOVE 'BiggerSchoolDB' TO 'D:\SQLServer\Data\Subsetting_BiggerSchoolDB_Target.mdf',
    MOVE 'BiggerSchoolDB_log' TO 'D:\SQLServer\Logs\Subsetting_BiggerSchoolDB_Target.ldf',
    REPLACE;
