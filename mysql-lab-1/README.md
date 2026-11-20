# MySQL Lab 1 – Prise en main de MySQL

## Objectif

Ce dépôt présente un premier travail pratique avec MySQL : créer une base de données, créer une table avec ses contraintes, insérer des données, consulter les données, puis effectuer des opérations de mise à jour et de suppression.

Le mini-exemple utilise une table `etudiants` afin de garder le travail simple et facile à vérifier.

## Prérequis

- MySQL Server installé et démarré.
- MySQL Workbench ou le client MySQL en ligne de commande.
- Version conseillée : MySQL 8.0.16 ou supérieure (pour l'application de la contrainte `CHECK`).

## Contenu du dépôt

```text
mysql-lab-1/
├── README.md
├── .gitignore
├── sql/
│   ├── 00_create_database_and_table.sql
│   ├── 01_insert_data.sql
│   ├── 02_select_queries.sql
│   ├── 03_update_delete.sql
│   └── 04_verification.sql
└── screenshots/
    └── .gitkeep
```

## Exécution avec MySQL Workbench

1. Ouvrir MySQL Workbench et se connecter au serveur local.
2. Ouvrir le fichier `sql/00_create_database_and_table.sql`, puis exécuter tout le script.
3. Exécuter ensuite les fichiers SQL dans l'ordre : `01_insert_data.sql`, `02_select_queries.sql`, `03_update_delete.sql`, puis `04_verification.sql`.
4. Vérifier les résultats dans les panneaux **Result Grid** et **Output**.

**Attention :** le premier script supprime puis recrée la table `etudiants`. Le relancer efface les données déjà présentes dans cette table avant de la recréer.

## Exécution depuis le terminal Windows (PowerShell)

Depuis le dossier du dépôt, exécuter les commandes suivantes une par une. Le mot de passe MySQL sera demandé :

```powershell
Get-Content .\sql\00_create_database_and_table.sql | mysql -u root -p
Get-Content .\sql\01_insert_data.sql | mysql -u root -p
Get-Content .\sql\02_select_queries.sql | mysql -u root -p
Get-Content .\sql\03_update_delete.sql | mysql -u root -p
Get-Content .\sql\04_verification.sql | mysql -u root -p
```

Si la commande `mysql` n'est pas reconnue, utiliser MySQL Workbench ou ajouter le dossier `bin` de MySQL au `PATH` de Windows.

## Résultat attendu

À la fin, la base `lab1_gestion_etudiants` contient la table `etudiants`. Elle contient initialement huit enregistrements. Les requêtes SELECT permettent de consulter et filtrer les données. Le script CRUD modifie la note de l'étudiant dont l'identifiant est `1` et supprime l'enregistrement dont l'identifiant est `8`.

## Captures d'écran

Le dossier `screenshots/` est réservé aux captures réelles de votre propre exécution (Workbench ou terminal). Ajouter, par exemple :

- `01-connexion-mysql.png` : connexion au serveur MySQL ;
- `02-creation-table.png` : création réussie et structure de la table ;
- `03-insertion.png` : insertion et affichage des enregistrements ;
- `04-requetes-select.png` : résultats des requêtes SELECT ;
- `05-update-delete.png` : vérification des opérations UPDATE et DELETE.

Ne pas utiliser les pages du cours comme captures de résultats : les captures doivent montrer l'exécution réelle des scripts.

## Remarque

Les commandes avancées (transactions, vues, procédures stockées, réplication, etc.) ne sont pas ajoutées automatiquement à ce premier exercice. Elles doivent être incluses seulement si elles figurent explicitement dans les consignes du Lab 1.
