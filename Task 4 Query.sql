Create Table Player AS
SELECT Season, Team, Name, Position From playergamemaster;
Select * from Player;

Create Table Scores AS
SELECT Season, Team, Name, Position, PassingAttempts From playergamefeatures1;
Select * from Scores;

SELECT Player.Season, player.Team, player.Name, player.Position, scores.PassingAttempts
FROM player
JOIN Scores
	ON player.Name = scores.Name AND player.Season=scores.Season AND player.Position=scores.Position AND player.Team=scores.Team
Where scores.PassingAttempts>1;