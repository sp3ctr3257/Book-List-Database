/* What does the app's SQL look like? */
CREATE TABLE Twitter (id INTEGER PRIMARY KEY, name TEXT, date INTEGER, tweet TEXT,location TEXT);

INSERT INTO Twitter VALUES (1, "Bathroom_gurlie24","2022-04-15", "I still never know what to say when someone knocks on the door","The Bathroom");
INSERT INTO Twitter VALUES (2,"dontcare4_taxes", "1760-06-11", "like I get why we have them but why are they so high?","Boston");
INSERT INTO Twitter VALUES (3,"The_only_V_beau", "2005-07-10", "...why is it spicy?","The Chocolate Factory");

SELECT * FROM Twitter;

UPDATE Twitter
SET tweet = "extract the juices??... EXPLODE!?"
WHERE id = 3;

UPDATE Twitter
SET tweet = "..Well that was fun"
WHERE id = 2;

UPDATE Twitter
SET date = "1769-03-22"
WHERE id = 2;

SELECT * FROM Twitter;

DELETE FROM Twitter
WHERE id = 1;
SELECT * FROM Twitter;
