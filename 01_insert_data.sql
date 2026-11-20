USE lab1_gestion_etudiants;

INSERT INTO etudiants (nom, prenom, email, ville, date_naissance, note) VALUES
('Alaoui', 'Yassine', 'yassine.alaoui@example.com', 'Marrakech', '2005-03-14', 15.50),
('Bennani', 'Salma', 'salma.bennani@example.com', 'Casablanca', '2004-11-02', 17.25),
('Idrissi', 'Omar', 'omar.idrissi@example.com', 'Rabat', '2005-07-21', 12.00),
('Amrani', 'Nour', 'nour.amrani@example.com', 'Marrakech', '2004-05-09', 18.00),
('Tazi', 'Adam', 'adam.tazi@example.com', 'Fes', '2005-01-30', 9.75),
('Fassi', 'Imane', 'imane.fassi@example.com', 'Casablanca', '2004-09-17', 14.00),
('Chraibi', 'Mehdi', 'mehdi.chraibi@example.com', 'Agadir', '2005-12-05', 11.50),
('Lahlou', 'Meryem', 'meryem.lahlou@example.com', 'Rabat', '2004-02-25', 16.75);

-- Vérifier l'insertion.
SELECT * FROM etudiants;
