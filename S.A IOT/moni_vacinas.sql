CREATE DATABASE moni_vacinas;
 USE moni_vacinas;
 CREATE TABLE dados (
 id INT AUTO_INCREMENT PRIMARY KEY,
 temperatura FLOAT,
 umidade FLOAT,
 luz FLOAT,
 timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );
 SELECT id, temperatura, umidade, luz, timestamp 
FROM dados 
ORDER BY timestamp DESC;
 DELETE FROM dados;
 SET sql_safe_updates = 0;
 SET sql_safe_updates = 1;-- Use the moni_vacinas database
 USE moni_vacinas;-- Delete all rows in the dados table
 DELETE FROM dados;-- Reset the AUTO_INCREMENT value to 1
 ALTER TABLE dados AUTO_INCREMENT = 1;
