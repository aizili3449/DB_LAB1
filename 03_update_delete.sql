-- Lab 1 : mise à jour et suppression de données (UPDATE et DELETE).

USE lab1_gestion_etudiants;

-- 1. Modifier la note de l'étudiant ayant l'identifiant 1.
UPDATE etudiants
SET note = 16.00
WHERE id = 1;

-- Vérifier la mise à jour.
SELECT id, nom, prenom, note
FROM etudiants
WHERE id = 1;

-- 2. Supprimer l'étudiant ayant l'identifiant 8.
DELETE FROM etudiants
WHERE id = 8;

-- Vérifier la suppression et afficher les lignes restantes.
SELECT * FROM etudiants ORDER BY id;
