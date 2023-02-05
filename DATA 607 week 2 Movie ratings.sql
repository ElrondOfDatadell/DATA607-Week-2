
set global local_infile=true;
DROP TABLE IF EXISTS week2_movies;
CREATE TABLE week2_movies
(
Responder_ID varchar(3) NOT NULL,
Batman_Begins varchar(3) NOT NULL,
Batman_The_Dark_Knight	varchar(3) NOT NULL,
Batman_The_Dark_Knight_Rises varchar(3) NOT NULL,
Star_Wars_A_New_Hope	varchar(3) NOT NULL,
Empire_Strikes_Back	varchar(3) NOT NULL,
Return_of_the_Jedi varchar(3) NOT NULL
);

SELECT * FROM week2_movies;

LOAD DATA LOCAL INFILE 'c:/data/movieranking.csv' 
INTO TABLE week2_movies
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT * FROM week2_movies
