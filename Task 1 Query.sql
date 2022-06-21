-- 1 What is the total number of Teams for season 2008 who played on Artificial surface
SELECT Team, Opponent, PlayingSurface FROM teamgame;

SELECT Count(distinct(Team)) AS Team, Count(distinct(Opponent)) AS Opponent, PlayingSurface 
FROM teamgame
WHERE PlayingSurface = 'Artificial' AND Season = '2008';




