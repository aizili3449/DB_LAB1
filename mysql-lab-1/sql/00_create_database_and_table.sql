-- Lab 1 : création de la base de données et de la table principale.
-- Attention : la table etudiants est supprimée puis recréée.

CREATE DATABASE IF NOT EXISTS lab1_gestion_etudiants
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE lab1_gestion_etudiants;

DROP TABLE IF EXISTS etudiants;

CREATE TABLE etudiants (
    id INT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    ville VARCHAR(60) NOT NULL DEFAULT 'Marrakech',
    date_naissance DATE NULL,
    note DECIMAL(4,2) NOT NULL DEFAULT 0.00,
    date_inscription TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_etudiants PRIMARY KEY (id),
    CONSTRAINT uq_etudiants_email UNIQUE (email),
    CONSTRAINT chk_etudiants_note CHECK (note BETWEEN 0 AND 20)
) ENGINE=InnoDB;

-- Afficher la base sélectionnée et la structure de la table.
SELECT DATABASE() AS base_selectionnee;
DESCRIBE etudiants;
