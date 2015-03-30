USE codeup_test_db;

SELECT 'All albums released after 1991' AS 'All Albums';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'All albums in Disco Genre' AS 'Disco Albums';
SELECT * FROM albums WHERE genre LIKE '%disco%';

SELECT 'All albums by Whitney Houston' AS 'Whitney''s Albums';
SELECT * FROM albums WHERE artist = 'Whitney Houston';