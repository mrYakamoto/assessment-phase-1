Paste your queries and results in this file
================================================================================
<!-- REALEASE 0 -->
sqlite> .headers on
sqlite> .mode column
sqlite> SELECT * FROM teams;
id          name                           sport
----------  -----------------------------  ----------
1           United States National Soccer  Soccer
2           Chicago Blackhawks             Hockey
3           Cleveland Cavaliers            Basketball
4           Dallas Cowboys                 Football
5           United States National Volley  Volleyball
6           Chicago Red Stars              Soccer


sqlite> SELECT * FROM players;
id          name
----------  ------------
1           Shannon Boxx
2           Hope Solo
3           Abby Wambach
4           Patrick Kane
5           Jonathan Toe
6           Lebron James
7           Kyrie Irving
8           Tony Romo
9           Dez Bryant
10          Kerri Walsh
11          Misty May-Tr
12          Julie Johnst

sqlite> SELECT * FROM positions;
id          title       jersey_number  team_id     player_id
----------  ----------  -------------  ----------  ----------
1           Midfielder  7              1           1
2           Goalkeeper  1              1           2
3           Forward     20             1           3
4           Right Wing  88             2           4
5           Center      19             2           5
6           Forward     23             3           6
7           Point Guar  2              3           7
8           Quarterbac  9              4           8
9           Wide Recei  88             4           9
10          Setter      0              5           10
11          Hitter      0              5           11
12          Midfielder  38             6           1
13          Defender    19             1           12
14          Defender    23             6           12

<!-- RELEASE 1 -->
sqlite> SELECT * FROM teams
   ...> WHERE name LIKE '%United States%';
id          name                           sport
----------  -----------------------------  ----------
1           United States National Soccer  Soccer
5           United States National Volley  Volleyball

sqlite> SELECT * FROM players
   ...> WHERE name LIKE 'J%';
id          name
----------  --------------
5           Jonathan Toews
12          Julie Johnston

sqlite> INSERT INTO players (name)
   ...> VALUES ('Edson Pele');
   sqlite> SELECT * FROM players;
id          name
----------  ------------
1           Shannon Boxx
2           Hope Solo
3           Abby Wambach
4           Patrick Kane
5           Jonathan Toe
6           Lebron James
7           Kyrie Irving
8           Tony Romo
9           Dez Bryant
10          Kerri Walsh
11          Misty May-Tr
12          Julie Johnst
13          Edson Pele

sqlite> INSERT INTO teams (name, sport)
   ...> VALUES ('Atlanta Fire Ants', 'Roller Hockey');
sqlite> SELECT * FROM teams;
id          name                           sport
----------  -----------------------------  ----------
1           United States National Soccer  Soccer
2           Chicago Blackhawks             Hockey
3           Cleveland Cavaliers            Basketball
4           Dallas Cowboys                 Football
5           United States National Volley  Volleyball
6           Chicago Red Stars              Soccer
7           Atlanta Fire Ants              Roller Hoc

sqlite> INSERT INTO positions (title, jersey_number, team_id, player_id)
   ...> VALUES ('Left Winger', 13, 7, 13);
sqlite> SELECT * FROM positions;
id          title       jersey_number  team_id     player_id
----------  ----------  -------------  ----------  ----------
1           Midfielder  7              1           1
2           Goalkeeper  1              1           2
3           Forward     20             1           3
4           Right Wing  88             2           4
5           Center      19             2           5
6           Forward     23             3           6
7           Point Guar  2              3           7
8           Quarterbac  9              4           8
9           Wide Recei  88             4           9
10          Setter      0              5           10
11          Hitter      0              5           11
12          Midfielder  38             6           1
13          Defender    19             1           12
14          Defender    23             6           12
15          Left Winge  13             7           13

<!-- RELEASE 4 -->
sqlite> UPDATE players
   ...> SET name = 'Hope Amelia Solo'
   ...> WHERE name = 'Hope Solo';
sqlite> SELECT * FROM players;
id          name
----------  ------------
1           Shannon Boxx
2           Hope Amelia
3           Abby Wambach
4           Patrick Kane
5           Jonathan Toe
6           Lebron James
7           Kyrie Irving
8           Tony Romo
9           Dez Bryant
10          Kerri Walsh
11          Misty May-Tr
12          Julie Johnst
13          Edson Pele




























