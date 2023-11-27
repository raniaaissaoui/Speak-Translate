CREATE TABLE `langues` (
  `Numero_langue` integer PRIMARY KEY,
  `nom` varchar(255),
  `native` varchar(255),
  `code` varchar(255)
);

CREATE TABLE `utilisateur` (
  `id_user` integer PRIMARY KEY,
  `nom` varchar(255),
  `mail` varchar(255),
  `mot_passe` varchar(255)
);

CREATE TABLE `Translation` (
  `id_trans` integer PRIMARY KEY,
  `id_user` integer,
  `text` varchar(255),
  `translation` varchar(255)
);

ALTER TABLE `utilisateur` ADD FOREIGN KEY (`id_user`) REFERENCES `Translation` (`id_user`);
