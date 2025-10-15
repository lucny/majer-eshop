CREATE TABLE `zakaznici` (
  `id_zakaznika` varchar(255) PRIMARY KEY,
  `jmeno` varchar(255),
  `email` varchar(255),
  `id_adresy` int
);

CREATE TABLE `adresy` (
  `id_adresy` int PRIMARY KEY,
  `ulice` varchar(255),
  `cislo_popisne` varchar(255),
  `psc` varchar(255),
  `id_mesto` int
);

CREATE TABLE `mesto` (
  `id_mesto` int PRIMARY KEY,
  `nazev` varchar(255)
);

CREATE TABLE `objednavky` (
  `id_objednavky` int PRIMARY KEY,
  `datum` date,
  `stav` varchar(255),
  `id_zakaznika` varchar(255),
  `id_zpusobu` int
);

CREATE TABLE `zpusoby_platby` (
  `id_zpusobu` int PRIMARY KEY,
  `popis` varchar(255)
);

CREATE TABLE `produkty` (
  `id_produktu` varchar(255) PRIMARY KEY,
  `nazev` varchar(255),
  `cena_za_kus` int,
  `id_kategorie` int,
  `id_dodavatele` varchar(255)
);

CREATE TABLE `kategorie_produktu` (
  `id_kategorie` int PRIMARY KEY,
  `nazev` varchar(255)
);

CREATE TABLE `dodavatele` (
  `id_dodavatele` varchar(255) PRIMARY KEY,
  `nazev` varchar(255),
  `id_mesto` int
);

CREATE TABLE `polozky_objednavky` (
  `id_objednavky` int,
  `id_produktu` varchar(255),
  `pocet_kusu` int
);

ALTER TABLE `polozky_objednavky` COMMENT = 'Primární klíč může být složený (id_objednavky, id_produktu)';

ALTER TABLE `zakaznici` ADD FOREIGN KEY (`id_adresy`) REFERENCES `adresy` (`id_adresy`);

ALTER TABLE `adresy` ADD FOREIGN KEY (`id_mesto`) REFERENCES `mesto` (`id_mesto`);

ALTER TABLE `objednavky` ADD FOREIGN KEY (`id_zakaznika`) REFERENCES `zakaznici` (`id_zakaznika`);

ALTER TABLE `objednavky` ADD FOREIGN KEY (`id_zpusobu`) REFERENCES `zpusoby_platby` (`id_zpusobu`);

ALTER TABLE `produkty` ADD FOREIGN KEY (`id_kategorie`) REFERENCES `kategorie_produktu` (`id_kategorie`);

ALTER TABLE `produkty` ADD FOREIGN KEY (`id_dodavatele`) REFERENCES `dodavatele` (`id_dodavatele`);

ALTER TABLE `dodavatele` ADD FOREIGN KEY (`id_mesto`) REFERENCES `mesto` (`id_mesto`);

ALTER TABLE `polozky_objednavky` ADD FOREIGN KEY (`id_objednavky`) REFERENCES `objednavky` (`id_objednavky`);

ALTER TABLE `polozky_objednavky` ADD FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`);
