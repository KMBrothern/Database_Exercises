USE codeup_test_db;

-- Looking for the name of all albums by Pink Floyd --
SELECT record_name FROM albums WHERE artist = 'Pink Floyd';

-- Looking for the year Sgt. Pepper's Lonely Hearts Club Band was released --
SELECT release_date FROM albums WHERE id = 5;

-- Looking for the genre for Nevermind
SELECT genre FROM albums WHERE record_name =  'Nevermind';

-- Which albums were released in the 1990s (All) --
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
-- Which albums had less than 20 million certified sales (All) --
SELECT * FROM albums WHERE sales_in_millions < 20;
-- All the albums in the rock genre. 
SELECT * FROM albums WHERE genre = 'rock';
-- Is this all the rock albums in the table?
-- NO it just gave me back the ones where rock is the only genre listed


SELECT 'Select exercises added successfully' AS 'Select_exercises';