Create Database Assignment

Create Table FootBallLeague
(
MatchID int identity(1001,1) primary key,
TeamName1 nvarchar(50),
TeamName2 nvarchar(50),
[Status] nvarchar(50),
WinningTeam nvarchar(50),
Points int
)

Create Procedure dbo.InsertInto @TeamName1 nvarchar(50),@TeamName2 nvarchar(50), @Status nvarchar(50),@WinningTeam nvarchar(50),@Points int
AS
BEGIN
INSERT INTO dbo.FootBallLeague
(
TeamName1,TeamName2, [Status], WinningTeam, Points
)
VALUES(@TeamName1, @TeamName2, @status, @WinningTeam, @Points)
END

EXEC dbo.InsertInto 'Italy', 'France' ,'Win', 'France', 4
EXEC dbo.InsertInto 'Brazil', 'Portugal' ,'Draw', '(null)', 2
EXEC dbo.InsertInto 'England', 'Japan' ,'Win', 'England', 4
EXEC dbo.InsertInto 'USA', 'Russia' ,'Win', 'Russia', 4
EXEC dbo.InsertInto 'Portugal', 'Italy' ,'Draw', '(null)', 2
EXEC dbo.InsertInto 'Brazil', 'France' ,'Win', 'Brazil', 4
EXEC dbo.InsertInto 'England', 'Russia' ,'Win', 'Russia', 4
EXEC dbo.InsertInto 'Japan', 'USA' ,'Draw', '(null)', 2

select * from FootBallLeague

/* Retrieve all the winning TeamNames */ 

select WinningTeam from FootBallLeague where WinningTeam!='(null)'


/*	Create View Match_View to display the teams whose status is Draw   */

CREATE VIEW Match_View  AS
SELECT TeamName1,TeamName2
FROM FootBallLeague
WHERE Status='Draw';

/* Retrieve the details of all matches in which Japan played */

select * from FootBallLeague where MatchID=1003 or MatchID=1008

