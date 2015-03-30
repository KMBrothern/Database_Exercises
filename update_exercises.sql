USE codeup_test_db;

SELECT 'All albums in my table' AS 'All Albums';
SELECT * FROM albums;

SELECT 'Albums w/ release date < 1980' AS 'Pre 1980 Albums';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'Albums by Michael Jackson' AS 'MJ Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

