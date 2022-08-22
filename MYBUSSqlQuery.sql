CREATE DATABASE MYBUS;

USE MYBUS;

CREATE TABLE BusInfo
(
Bus_ID INTEGER NOT NULL PRIMARY KEY,
BoardingPoint VARCHAR(30) NOT NULL,
TravelDate DATETIME NOT NULL,
Amount DECIMAL NOT NULL,
Rating INTEGER
);

CREATE PROCEDURE MYBUS(@Bus_ID int,
                               @BoardingPoint nchar(30),
							   @TravelDate DATETIME,
							   @Amount DECIMAL,
							   @Rating INT)
							   AS
							   BEGIN 
							   INSERT INTO BusInfo
							   (Bus_ID,BoardingPoint,TravelDate,Amount,Rating)
							   VALUES (@Bus_ID,
                               @BoardingPoint ,
							   @TravelDate ,
							   @Amount ,
							   @Rating)
							   END
							   USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 1,
		@BoardingPoint = N'BGL',
		@TravelDate = N'2017-06-18',
		@Amount = 400.65,
		@Rating = 2

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 2,
		@BoardingPoint = N'HYD',
		@TravelDate = N'2017-10-05',
		@Amount = 600.00,
		@Rating = 3

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 3,
		@BoardingPoint = N'CHN',
		@TravelDate = N'2016-07-25',
		@Amount = 445.95,
		@Rating = 3

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 4,
		@BoardingPoint = N'PUN',
		@TravelDate = N'2017-12-10',
		@Amount = 543.00,
		@Rating = 4

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 5,
		@BoardingPoint = N'MUM',
		@TravelDate = N'2017-01-28',
		@Amount = 500.50,
		@Rating = 4

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 6,
		@BoardingPoint = N'PUN',
		@TravelDate = N'2016-03-27',
		@Amount = 333.55,
		@Rating = 3

SELECT	'Return Value' = @return_value

GO

USE [MYBUS]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[MYBUS]
		@Bus_ID = 7,
		@BoardingPoint = N'MUM',
		@TravelDate = N'2016-11-06',
		@Amount = 510.00,
		@Rating = 4

SELECT	'Return Value' = @return_value

GO

select * from BusInfo

/* Retrieve all BoardingPoint and TravelDate for the amount which is greater than 450.*/

SELECT BoardingPoint,TravelDate
FROM BusInfo
WHERE Amount > 450;


CREATE VIEW Bus_View
AS 
SELECT Bus_ID,BoardingPoint
FROM BusInfo
WHERE Rating>3;

SELECT * FROM Bus_View; --To execute a View

select * from BusInfo;
