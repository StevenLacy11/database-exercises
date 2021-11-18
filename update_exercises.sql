USE codeup_test_db;

SELECT 'All albums in the table' AS 'Update Exercise 1';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Update Exercise 2';
SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT name AS 'All albums released before 1880' FROM albums WHERE release_date < 1880;

SELECT 'All albums by Michael Jackson' AS 'Update Exercise 3';
SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name AS 'All albums by Peter Jackson'  FROM albums WHERE artist = 'Peter Jackson';