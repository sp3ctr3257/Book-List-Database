/* Create table about the people and what they do here */
CREATE TABLE singers (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO singers VALUES (1, "Steve Lacey");
INSERT INTO singers VALUES (2, "Pink Pantheress");
INSERT INTO singers VALUES (3, "Jorja Smith");
INSERT INTO singers VALUES (4, "Mereba");
INSERT INTO singers VALUES (5, "Kelela");
INSERT INTO singers VALUES (6, "Syd");
INSERT INTO singers VALUES (7, "JID");
INSERT INTO singers VALUES (8, "Ravyn Lenae");
INSERT INTO singers VALUES (9, "Smino");
INSERT INTO singers VALUES (10, "Tinashe");
INSERT INTO singers VALUES (11, "Teedra Moses");
INSERT INTO singers VALUES (12, "Alex Isley");
INSERT INTO singers VALUES (13, "Joyce Wrice");
INSERT INTO singers VALUES (14, "Jordan Ward");
INSERT INTO singers VALUES (15, "Joony");

CREATE TABLE popular_songs(song_id INTEGER, title TEXT);
INSERT INTO popular_songs VALUES (1, "Bad Habit");
INSERT INTO popular_songs VALUES (1, "Palace/Curse");
INSERT INTO popular_songs VALUES (2, "Attracted to you");
INSERT INTO popular_songs VALUES (3, "Little Things");
INSERT INTO popular_songs VALUES (4, "Sandstorm feat. JID");
INSERT INTO popular_songs VALUES (5, "Washed Away");
INSERT INTO popular_songs VALUES (6, "Ce Soir");
INSERT INTO popular_songs VALUES (6, "Palace/Curse");
INSERT INTO popular_songs VALUES (7, "Working Out");
INSERT INTO popular_songs VALUES (7, "Sandstorm feat. JID");
INSERT INTO popular_songs VALUES (8, "Sticky");
INSERT INTO popular_songs VALUES (8, "Glass Flows");
INSERT INTO popular_songs VALUES (9, "Curtains");
INSERT INTO popular_songs VALUES (9, "Glass Flows");
INSERT INTO popular_songs VALUES (10, "The Worst in Me");
INSERT INTO popular_songs VALUES (11, "Be Your Girl");
INSERT INTO popular_songs VALUES (12, "Good & Plenty");
INSERT INTO popular_songs VALUES (13, "Iced Tea");
INSERT INTO popular_songs VALUES (14, "White Crocs");
INSERT INTO popular_songs VALUES (14, "IDC ft.Joony");
INSERT INTO popular_songs VALUES (15, "IDC ft.Joony");
INSERT INTO popular_songs VALUES (15, "BABY JOON");




CREATE TABLE Birthplace(birth_id INTEGER PRIMARY KEY, state TEXT);
INSERT INTO Birthplace VALUES(1, "California");
INSERT INTO Birthplace VALUES(2, "United Kingdom");
INSERT INTO Birthplace VALUES(3, "United Kingdom");
INSERT INTO Birthplace VALUES(4, "Alabama");
INSERT INTO Birthplace VALUES(5, "Washington D.C");
INSERT INTO Birthplace VALUES(6, "California");
INSERT INTO Birthplace VALUES(7, "Georgia");
INSERT INTO Birthplace VALUES(8, "Illinois");
INSERT INTO Birthplace VALUES(9, "Missouri");
INSERT INTO Birthplace VALUES(10, "Kentucky");
INSERT INTO Birthplace VALUES(11, "Louisiana");
INSERT INTO Birthplace VALUES(12, "New Jersey");
INSERT INTO Birthplace VALUES(13, "New Jersey");
INSERT INTO Birthplace VALUES(14, "California");
INSERT INTO Birthplace VALUES(15, "Georgia");

CREATE TABLE Colabs(Colabperson1_id INTEGER, Colabperson2_id INTEGER);

INSERT INTO Colabs VALUES(1,6);
INSERT INTO Colabs VALUES(4,7);
INSERT INTO Colabs VALUES(8,9);
INSERT INTO Colabs VALUES(14,15);


SELECT s1.name, s2.name as Collaborator FROM Colabs as c
JOIN singers as s1
ON s1.id = c.colabperson1_id
JOIN singers as s2
ON s2.id = c.colabperson2_id;

SELECT name, title, state FROM singers
JOIN popular_songs as p
ON singers.id = p.song_id
JOIN Birthplace as b
ON p.song_id = b.birth_id;
