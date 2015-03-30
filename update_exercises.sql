USE codeup_test_db;


-- SELECT 'All albums in my table' AS 'All Albums';
-- SELECT * FROM albums;

-- SELECT 'Albums w/ release date < 1980' AS 'Pre 1980 Albums';
-- SELECT * FROM albums WHERE release_date < 1980;

-- SELECT 'Albums by Michael Jackson' AS 'MJ Albums';
-- SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Beginning of Update query statements
SELECT 'Making all albums 10x more popular' AS 'Multiplied Albums';
UPDATE albums
SET sales_in_millions = sales_in_millions*10
WHERE id BETWEEN 1 AND 32;

SELECT * FROM albums;


SELECT 'Moving pre 80''s albums to 1901' AS 'Moving Albums';
UPDATE albums
SET release_date = 1901
WHERE release_date < 1980;

SELECT * FROM albums WHERE release_date = 1901;


SELECT 'Ruining the KING OF POP' AS 'Name Change';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';

