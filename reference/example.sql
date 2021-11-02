-- For database example.
CREATE DATABASE IF NOT EXISTS cluecon;
CREATE TABLE IF NOT EXISTS cluecon.example (
  id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(80) NOT NULL DEFAULT '',
  hair_color varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO example (name, hair_color) VALUES ("Steve", "red"), ("Betty", "brown"), ("Sharon", "blue"), ("Nick", "green");
CREATE USER 'cluecon'@'%' IDENTIFIED BY 'cluecon';
GRANT SELECT, INSERT, UPDATE, DELETE ON cluecon.* TO 'cluecon'@'%';
