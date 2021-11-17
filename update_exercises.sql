USE codeup_test_db;

SELECT 'All albums in the table' AS 'Update Exercise A';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);


SELECT 'All albums released before 1980' AS 'Update Exercise B';
SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;


SELECT 'All albums by Michael Jackson' AS 'Update Exercise C';
SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
