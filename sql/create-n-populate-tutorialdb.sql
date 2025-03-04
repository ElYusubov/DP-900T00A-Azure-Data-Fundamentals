-- Create a database if it is not there
IF NOT EXISTS (
SELECT name
FROM sys.databases
WHERE name = N'TutorialDB'
)
CREATE DATABASE [TutorialDB];
GO


ALTER DATABASE [TutorialDB] SET QUERY_STORE=ON;
GO

USE [TutorialDB]
GO

-- Create the table in the specified schema
CREATE TABLE dbo.Customers
(
CustomerId INT NOT NULL PRIMARY KEY, -- primary key column
Name [NVARCHAR] (50) NOT NULL,
Location [NVARCHAR] (50) NOT NULL,
Email [NVARCHAR] (50) NOT NULL
);
GO

-- Insert rows into table 'Customers'
INSERT INTO dbo.Customers
([CustomerId],[Name],[Location],[Email])
VALUES
( 1, N'Orlando', N'Australia', N''),
( 2, N'Keith', N'India', N'keith0@adventure-works.com'),
( 3, N'Donna', N'Germany', N'donna0@adventure-works.com'),
( 4, N'Janet', N'United States', N'janet1@adventure-works.com');
GO
