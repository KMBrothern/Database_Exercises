USE codeup_test_db;

SELECT 'All albums released after 1991 will be deleted' AS 'All Albums';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All albums in Disco Genre will be deleted' AS 'Disco Albums';
DELETE FROM albums WHERE genre LIKE '%disco%';

SELECT 'All albums by Whitney Houston will be deleted' AS 'Whitney''s Albums';
DELETE FROM albums WHERE artist = 'Whitney Houston';