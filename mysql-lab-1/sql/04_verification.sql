-- Vérifications finales du Lab 1.

USE lab1_gestion_etudiants;

SHOW TABLES;
DESCRIBE etudiants;

SELECT COUNT(*) AS nombre_etudiants
FROM etudiants;

SELECT MIN(note) AS note_minimale,
       MAX(note) AS note_maximale,
       AVG(note) AS moyenne_generale
FROM etudiants;

SELECT *
FROM etudiants
ORDER BY id;
