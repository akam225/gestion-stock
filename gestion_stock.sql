
-- Base de données : Gestion des stocks


CREATE DATABASE gestion_stock;
USE gestion_stock;

-- Table Produits
CREATE TABLE Produits (
  id_produit INT AUTO_INCREMENT PRIMARY KEY,
  code_produit VARCHAR(50),
  libelle VARCHAR(100),
  stock_actuel INT,
  seuil_alerte INT
);

-- Table Utilisateurs
CREATE TABLE Utilisateurs (
  id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  role VARCHAR(50)
);

-- Table MouvementsStock
CREATE TABLE MouvementsStock (
  id_mouvement INT AUTO_INCREMENT PRIMARY KEY,
  date_mvt DATETIME,
  type_mvt VARCHAR(10),
  quantite INT,
  id_produit INT,
  id_utilisateur INT,

  FOREIGN KEY (id_produit) REFERENCES Produits(id_produit),
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);
