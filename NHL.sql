DROP table goalie CASCADE;

CREATE table goalie(
player_id INT,
game_id INT,
team_id INT,
assists INT,
goals INT,
pim INT,
shots INT,
saves INT,
decision TEXT);

SELECT * FROM goalie;

Drop table player CASCADE;

CREATE table player(
player_id INT primary key,
firstName TEXT,
lastName TEXT,
nationality TEXT,
primaryposition TEXT);

Drop table team CASCADE;

CREATE table team(
team_id INT primary key,
shortname TEXT,
teamname TEXT,
abbreviation TEXT);

Drop table skater CASCADE;

CREATE table skater(
game_id INT,
player_id INT,
team_id	INT,
assists INT,
goals INT,
shots INT,
hits INT);

SELECT * FROM skater;

Drop table game CASCADE;

CREATE table game(
game_id INT PRIMARY KEY,
season INT,
date_time DATE,
away_team_id INT,
home_team_id INT,
away_goals INT,
home_goals INT,
outcome TEXT);

SELECT * FROM game;

SELECT * FROM team;

SELECT game_id,season,home_team_id,home_goals,shortname,teamname
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18;

SELECT game_id,season,home_team_id,home_goals,shortname,teamname
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18 AND game.home_goals > 3;

SELECT game_id,season,home_team_id,home_goals,shortname,teamname
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18 AND game.home_goals > 3
ORDER BY game.home_goals;

SELECT game_id,season,home_team_id,away_goals,shortname,teamname,away_team_id,outcome
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18 AND game.away_team_id = 19;

/*CREATE VIEW nhl 
AS
*/
SELECT game_id,season,home_team_id,home_goals,shortname,teamname
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18;

SELECT game_id,season,home_team_id,away_goals,shortname,teamname,away_team_id,outcome
FROM game INNER JOIN team
ON team.team_id=game.home_team_id
WHERE game.home_team_id = 18 AND game.outcome LIKE '%home win REG%';

/*CREATE VIEW nhl 
AS
*/
SELECT game_id,season,home_team_id,home_goals,shortname,teamname
FROM game INNER JOIN team
ON team.team_id=game.home_team_id

/*SELECT * FROM nhl; */