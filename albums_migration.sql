 USE codeup_test_db;
 
 DROP TABLE IF EXISTS albums;
 CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    record_name VARCHAR(100) NOT NULL,
    sales_in_millions FLOAT(15,2) NOT NULL,
    release_date INT  NOT NULL,
    genre CHAR(75) NOT NULL,
    PRIMARY KEY (id)

);