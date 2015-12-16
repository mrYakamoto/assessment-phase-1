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
