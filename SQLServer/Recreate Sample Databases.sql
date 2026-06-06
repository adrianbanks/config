ALTER DATABASE Reference_AdventureWorks SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_AdventureWorksDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_AdventureWorksLT SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_Northwind SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_WideWorldImporters SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_WideWorldImportersDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_Chinook SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE Reference_Contoso SET SINGLE_USER WITH ROLLBACK IMMEDIATE


DROP DATABASE IF EXISTS Reference_AdventureWorks
DROP DATABASE IF EXISTS Reference_AdventureWorksDW
DROP DATABASE IF EXISTS Reference_AdventureWorksLT
DROP DATABASE IF EXISTS Reference_Northwind
DROP DATABASE IF EXISTS Reference_WideWorldImporters
DROP DATABASE IF EXISTS Reference_WideWorldImportersDW
DROP DATABASE IF EXISTS Reference_Chinook
DROP DATABASE IF EXISTS Reference_Contoso


RESTORE DATABASE Reference_AdventureWorks
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorks2025.bak'
WITH
    MOVE 'AdventureWorks' TO 'D:\SQLServer\Data\Reference_AdventureWorks.mdf',
    MOVE 'AdventureWorks_log' TO 'D:\SQLServer\Logs\Reference_AdventureWorks.ldf',
    REPLACE;

RESTORE DATABASE Reference_AdventureWorksDW
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksDW2025.bak'
WITH
    MOVE 'AdventureWorksDW' TO 'D:\SQLServer\Data\Reference_AdventureWorksDW.mdf',
    MOVE 'AdventureWorksDW_log' TO 'D:\SQLServer\Logs\Reference_AdventureWorksDW.ldf',
    REPLACE;

RESTORE DATABASE Reference_AdventureWorksLT
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\AdventureWorksLT2025.bak'
WITH
    MOVE 'AdventureWorksLT2022_Data' TO 'D:\SQLServer\Data\Reference_AdventureWorksLT.mdf',
    MOVE 'AdventureWorksLT2022_log' TO 'D:\SQLServer\Logs\Reference_AdventureWorksLT.ldf',
    REPLACE;

RESTORE DATABASE Reference_Northwind
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Northwind.bak'
WITH
    MOVE 'Northwind' TO 'D:\SQLServer\Data\Reference_Northwind.mdf',
    MOVE 'Northwind_log' TO 'D:\SQLServer\Logs\Reference_Northwind.ldf',
    REPLACE;

RESTORE DATABASE Reference_WideWorldImporters
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImporters.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Reference_WideWorldImporters.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Reference_WideWorldImporters2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Reference_WideWorldImporters.ldf',
    MOVE 'WWI_InMemory_Data_1' TO 'D:\SQLServer\Logs\Reference_WideWorldImporters_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Reference_WideWorldImportersDW
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\WideWorldImportersDW.bak'
WITH
    MOVE 'WWI_Primary' TO 'D:\SQLServer\Data\Reference_WideWorldImportersDW.mdf',
    MOVE 'WWI_UserData' TO 'D:\SQLServer\Logs\Reference_WideWorldImportersDW2.mdf',
    MOVE 'WWI_Log' TO 'D:\SQLServer\Logs\Reference_WideWorldImportersDW.ldf',
    MOVE 'WWIDW_InMemory_Data_1' TO 'D:\SQLServer\Logs\Reference_WideWorldImportersDW_InMemory.ldf',
    REPLACE;

RESTORE DATABASE Reference_Chinook
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Chinook.bak'
WITH
    MOVE 'Chinook' TO 'D:\SQLServer\Data\Reference_Chinook.mdf',
    MOVE 'Chinook_log' TO 'D:\SQLServer\Logs\Reference_Chinook.ldf',
    REPLACE;


RESTORE DATABASE Reference_Contoso
FROM DISK = 'D:\SQLServer\Backups\SampleDatabases\Contoso.bak'
WITH
    MOVE 'Contoso' TO 'D:\SQLServer\Data\Reference_Contoso.mdf',
    MOVE 'Contoso_log' TO 'D:\SQLServer\Logs\Reference_Contoso.ldf',
    REPLACE;


ALTER DATABASE Reference_AdventureWorks SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_AdventureWorksDW SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_AdventureWorksLT SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_Northwind SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_WideWorldImporters SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_WideWorldImportersDW SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_Chinook SET READ_ONLY WITH NO_WAIT
ALTER DATABASE Reference_Contoso SET READ_ONLY WITH NO_WAIT
