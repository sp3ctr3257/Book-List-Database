/* Put your data in here and query it! */
CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);
    
INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 7, 5, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 8, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 2, 8, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 4, 5, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 4, 8, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 6, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 5, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 8, 9, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 6, 4, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 8, 8, 5, 6, 6, 4);

SELECT * FROM marvels;

/*What are average, max, and min values in the data?*/
SELECT MIN(Strength) FROM marvels;
SELECT MAX(fighting_skills) FROM marvels;
SELECT AVG(weight_kg) FROM marvels;

/*What about those numbers per category in the data (using HAVING)?*/
SELECT weight_kg, Intelligence, name
FROM marvels
GROUP BY weight_kg
HAVING weight_kg >= 150
ORDER BY weight_kg DESC;
/*What ways are there to group the data values that don’t exist yet (using CASE)?*/
SELECT name, Strength,
CASE WHEN Strength >= 8 THEN "This character is really strong!"
WHEN Strength >= 5 THEN "This character is pretty strong"
ELSE " This character is weak."
END AS physical_strength
FROM marvels;
/*What interesting ways are there to filter the data (using AND/OR)?*/
SELECT name, Strength, durability
FROM marvels
WHERE Strength > 5 AND durability > 6
