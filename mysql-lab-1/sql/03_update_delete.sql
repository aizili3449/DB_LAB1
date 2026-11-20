USE lab1_gestion_etudiants;
UPDATE etudiants
SET note = 16.00
WHERE id = 1;
SELECT id, nom, prenom, note
FROM etudiants
WHERE id = 1;

DELETE FROM etudiants
WHERE id = 8;

SELECT * FROM etudiants ORDER BY id;
