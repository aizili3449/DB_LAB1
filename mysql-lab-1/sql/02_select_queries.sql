USE lab1_gestion_etudiants;

SELECT * FROM etudiants;

SELECT nom, prenom, email FROM etudiants;
SELECT nom, prenom, note
FROM etudiants
WHERE note >= 12;
SELECT nom, prenom, ville, note
FROM etudiants
WHERE ville = 'Marrakech' AND note >= 12;
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE 'A%';
SELECT nom, prenom, note
FROM etudiants
WHERE note BETWEEN 10 AND 16;
SELECT nom, prenom, note
FROM etudiants
ORDER BY note DESC;
SELECT nom, prenom, note
FROM etudiants
ORDER BY note DESC
LIMIT 3;
SELECT DISTINCT ville
FROM etudiants
ORDER BY ville;
