# tournament
tournament project

What is it?
-----------

The tournament database is a basic PostgreSQL database to manage a swiss-style tournament. The database is the final project for the Back End Development Component of the Udacity Intro to Programming Nanodegree Program.

Table of Contents
------------------

1)Download 

2)Documentation

3)Testing


1)Download
-----------

Download the basic files to create the database https://github.com/pkristapovich/tournament

The files include:

1. tournament.py – the python code to execute includes the following functions:
  * Connect() - Meant to connect to the database. Already set up for you.
  * deleteMatche() - Remove all the matches records from the database.
  * deletePlayers() - Remove all the player records from the database.
  * countPlayers - Returns the number of players currently registered.
  * registerPlayer - Adds a player to the tournament database.
  * playerStandings - Returns a list of the players and their win records, sorted by wins. You can use the player standings table created in your .sql file for reference.
  * reportMatch - This is to simply populate the matches table and record the winner and loser as (winner,loser) in the insert statement.
  * swissPairings - Returns a list of pairs of players for the next round of a match. Here all we are doing is the pairing of alternate players from the player standings table, zipping them up and appending them to a list with values:
(id1, name1, id2, name2)
2. tournament.sql – the sql syntax for the two tables and one view in the database.
3. tournament_test.py – the python code to make sure it works.
4. README.md – the readme you are reading.




2)Documentation
-------------

To use the project files downloaded in step 1) to setup a swiss-tournament please do the following:

A)Follow instructions located in project Getting Started to set up vagrant virtual machine here: https://docs.google.com/document/d/1_QQ_FBcPROER-s674YT5WoV6wdpvGWZCI9b8_p0RJ_s/pub

B)To get vagrant virtual machine is running, using GitBash, navigate to the folder vagrant/tournament by typing "cd vagrant/tournament"

C)Once in the folder start the virtual machine by typing "vagrant up" then typing "vagrant ssh"

D)Now enter Postgresql by typing "psql" then create the tournament database by typing:

CREATE DATABASE tournament

E)Type "\c tournament" to connect to database and then type "\i tournament.sql" to create the tables and views contained in "tournament.sql"

F)Exit psql by typing "\q"

G)Execute the test script the typing "python tournament_test.py"


D)Use the functions in the script to simulate a tournament. The functions are:




3)Testing
----------

The files also include tournament_test.py, which was created by Udacity for the purpose of verifying code fulfils Udacity’s requirements. 
I’ve included it in the case it might be helpful to test any revisions made to the code in the future. In order to execute the test
just type "python tournament_test.py" into the virtual machine.


4)Acknowledgements

Thanks to harry_staley, Udacity Mentor who wrote the initial version of the VIEW found in tournament.sql as I was beginning to go crazy. Udacity also created the tournament_test.py file.
