-- 3 Create the below table from FantasyDefenseGame. Note: Total is the sum of each value across the entire data set.
Create TABLE Table2 (Valu VARCHAR(64), Total Int);

-- 1
SET @points = (SELECT SUM(PointsAllowed) FROM fantasydefensegame);
INSERT INTO Table2
 (Valu, Total)
VALUES
 ('PointsAllowed', @points);
-- 2
SET @solo = (SELECT SUM(SoloTackles) FROM fantasydefensegame);
INSERT INTO Table2
 (Valu, Total)
VALUES
 ('SoloTackles', @solo);
-- 3
SET @sacks = (SELECT SUM(Sacks) FROM fantasydefensegame);
INSERT INTO Table2
 (Valu, Total)
VALUES
 ('Sacks', @sacks);
SELECT * FROM Table2;
