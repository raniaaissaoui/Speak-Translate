CREATE TABLE `langues` (
  `Numero_langue` integer PRIMARY KEY,
  `nom` varchar(255),
  `native` varchar(255),
  `code` varchar(255)
);

CREATE TABLE `utilisateur` (
  `id` integer PRIMARY KEY,
  `nom` varchar(255),
  `prenom` varchar(255),
  `mail` varchar(255),
  `mot_passe` varchar(255)
);
