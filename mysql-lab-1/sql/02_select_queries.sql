-- Lab 1 : consultation et filtrage des données avec SELECT.

USE lab1_gestion_etudiants;

-- 1. Afficher toutes les colonnes et toutes les lignes.
SELECT * FROM etudiants;

-- 2. Afficher uniquement certaines colonnes.
SELECT nom, prenom, email FROM etudiants;

-- 3. Filtrer les étudiants ayant une note supérieure ou égale à 12.
SELECT nom, prenom, note
FROM etudiants
WHERE note >= 12;

-- 4. Combiner deux conditions avec AND.
SELECT nom, prenom, ville, note
FROM etudiants
WHERE ville = 'Marrakech' AND note >= 12;

-- 5. Rechercher les noms qui commencent par la lettre A.
SELECT nom, prenom
FROM etudiants
WHERE nom LIKE 'A%';

-- 6. Filtrer les notes dans un intervalle.
SELECT nom, prenom, note
FROM etudiants
WHERE note BETWEEN 10 AND 16;

-- 7. Trier les résultats par note décroissante.
SELECT nom, prenom, note
FROM etudiants
ORDER BY note DESC;

-- 8. Limiter le nombre de résultats.
SELECT nom, prenom, note
FROM etudiants
ORDER BY note DESC
LIMIT 3;

-- 9. Afficher les villes sans doublons.
SELECT DISTINCT ville
FROM etudiants
ORDER BY ville;
