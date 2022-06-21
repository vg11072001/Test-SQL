-- 2 Display top 3 team which has the Maximum Opponent Score in a home game 
SELECT  team
FROM teamgame
WHERE HomeOrAway = 'Home'
ORDER BY OpponentScore DESC
LIMIT 3;