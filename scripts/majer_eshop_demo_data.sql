-- mesto
INSERT INTO mesto (id_mesto, nazev) VALUES (1, 'Lanžhot');
INSERT INTO mesto (id_mesto, nazev) VALUES (2, 'Libochovice');
INSERT INTO mesto (id_mesto, nazev) VALUES (3, 'Janské Lázně');
INSERT INTO mesto (id_mesto, nazev) VALUES (4, 'Úterý');
INSERT INTO mesto (id_mesto, nazev) VALUES (5, 'Meziboří');
INSERT INTO mesto (id_mesto, nazev) VALUES (6, 'Broumov');
INSERT INTO mesto (id_mesto, nazev) VALUES (7, 'Červená Řečice');
INSERT INTO mesto (id_mesto, nazev) VALUES (8, 'Mirotice');
INSERT INTO mesto (id_mesto, nazev) VALUES (9, 'Výsluní');
INSERT INTO mesto (id_mesto, nazev) VALUES (10, 'Vlachovo Březí');

-- adresy
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (1, 'Sitteho', '2', '424 98', 2);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (2, 'Vašátkova', '698', '604 50', 1);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (3, 'Šachovská', '9', '610 73', 5);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (4, 'Branická', '1', '662 95', 4);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (5, 'Malešovská', '6', '601 71', 4);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (6, 'Pařížská', '67', '692 03', 3);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (7, 'Hostýnská', '762', '471 04', 2);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (8, 'Nad Šafránkou', '2', '764 59', 9);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (9, 'Lehárova', '54', '778 71', 2);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (10, 'Pikovická', '5', '421 05', 10);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (11, 'Vizovická', '4', '544 94', 7);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (12, 'Kostková', '20', '313 34', 1);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (13, 'Hůlkova', '5', '465 22', 1);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (14, 'Estonská', '654', '146 79', 2);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (15, 'Nad Návsí', '66', '771 51', 4);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (16, 'Tylišovská', '29', '286 96', 4);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (17, 'Náměstí Hrdinů', '9', '328 31', 9);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (18, 'Opočínská', '21', '374 99', 10);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (19, 'Na Štamberku', '192', '261 95', 1);
INSERT INTO adresy (id_adresy, ulice, cislo_popisne, psc, id_mesto) VALUES (20, 'Nad Obcí', '82', '359 38', 9);

-- zakaznici
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK1', 'František Ševčík', 'davidjanda@example.com', 7);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK2', 'Kamila Procházková', 'qurban@example.org', 18);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK3', 'Drahoslava Dostálová', 'fnovotny@example.net', 14);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK4', 'Peter Doležal', 'ferdinand98@example.org', 8);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK5', 'Zdenka Pešková', 'hnovotny@example.org', 15);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK6', 'Dalibor Vítek', 'sarkatomanova@example.net', 19);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK7', 'Monika Vávrová', 'kopeckaalena@example.net', 9);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK8', 'Vratislav Dostál', 'ivanstanek@example.com', 1);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK9', 'Linda Vlčková', 'maresovamagdalena@example.net', 6);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK10', 'Felix Sedlák', 'eliskablazkova@example.net', 14);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK11', 'Agáta Veselá Ph.D.', 'nstastny@example.org', 11);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK12', 'Karolína Staňková', 'tomanjonas@example.org', 9);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK13', 'Jonáš Strnad', 'valentapremysl@example.com', 5);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK14', 'Vratislav Dostál', 'nataliehajkova@example.net', 7);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK15', 'Radovan Matoušek', 'bartosrudolf@example.org', 11);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK16', 'Dobroslav Toman', 'matousekzikmund@example.com', 4);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK17', 'Martin Pokorný', 'bilekjan@example.com', 3);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK18', 'Vasyl Marek', 'silviesykorova@example.com', 13);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK19', 'Filip Dušek', 'annabednarova@example.net', 4);
INSERT INTO zakaznici (id_zakaznika, jmeno, email, id_adresy) VALUES ('ZK20', 'Norbert Novák', 'svobodovajirina@example.org', 12);

-- zpusoby_platby
INSERT INTO zpusoby_platby (id_zpusobu, popis) VALUES (1, 'kartou');
INSERT INTO zpusoby_platby (id_zpusobu, popis) VALUES (2, 'dobírka');
INSERT INTO zpusoby_platby (id_zpusobu, popis) VALUES (3, 'převod');

-- kategorie_produktu
INSERT INTO kategorie_produktu (id_kategorie, nazev) VALUES (1, 'Poslání');
INSERT INTO kategorie_produktu (id_kategorie, nazev) VALUES (2, 'Prodloužení');
INSERT INTO kategorie_produktu (id_kategorie, nazev) VALUES (3, 'Tloušťka');
INSERT INTO kategorie_produktu (id_kategorie, nazev) VALUES (4, 'Volný');
INSERT INTO kategorie_produktu (id_kategorie, nazev) VALUES (5, 'Vyznačovat');

-- dodavatele
INSERT INTO dodavatele (id_dodavatele, nazev, id_mesto) VALUES ('D1', 'Kučera', 6);
INSERT INTO dodavatele (id_dodavatele, nazev, id_mesto) VALUES ('D2', 'Stejskalová o.s.', 10);
INSERT INTO dodavatele (id_dodavatele, nazev, id_mesto) VALUES ('D3', 'Švec o.s.', 5);
INSERT INTO dodavatele (id_dodavatele, nazev, id_mesto) VALUES ('D4', 'Jelínek', 1);
INSERT INTO dodavatele (id_dodavatele, nazev, id_mesto) VALUES ('D5', 'Hrubá Matějka k.s.', 8);

-- produkty
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P1', 'Konec', 4492, 1, 'D4');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P2', 'Hledisko', 745, 5, 'D3');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P3', 'Dlouhodobý', 3062, 5, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P4', 'Likvidace', 669, 1, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P5', 'Večer', 2470, 1, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P6', 'Vzájemně', 927, 4, 'D3');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P7', 'Vášeň', 3814, 3, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P8', 'No', 3132, 3, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P9', 'Pytel', 2287, 1, 'D5');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P10', 'Prostředek', 1501, 5, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P11', 'Omezený', 1438, 4, 'D4');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P12', 'Sport', 2311, 5, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P13', 'Osobnost', 2756, 1, 'D2');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P14', 'Ačkoli', 362, 3, 'D4');
INSERT INTO produkty (id_produktu, nazev, cena_za_kus, id_kategorie, id_dodavatele) VALUES ('P15', 'Zeleň', 2293, 1, 'D2');

-- objednavky
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (1, '2025-06-24', 'zrušena', 'ZK11', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (2, '2025-10-02', 'zrušena', 'ZK16', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (3, '2025-01-14', 'zrušena', 'ZK15', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (4, '2025-03-18', 'vyřízena', 'ZK5', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (5, '2025-08-21', 'zrušena', 'ZK18', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (6, '2025-05-04', 'vyřízena', 'ZK19', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (7, '2025-02-28', 'zrušena', 'ZK13', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (8, '2025-06-06', 'zpracovává se', 'ZK5', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (9, '2025-05-23', 'vyřízena', 'ZK3', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (10, '2024-12-24', 'zpracovává se', 'ZK5', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (11, '2025-02-09', 'zpracovává se', 'ZK14', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (12, '2025-05-08', 'zpracovává se', 'ZK13', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (13, '2025-03-23', 'zrušena', 'ZK15', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (14, '2024-12-11', 'vyřízena', 'ZK18', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (15, '2025-10-13', 'zrušena', 'ZK4', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (16, '2025-07-02', 'zrušena', 'ZK9', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (17, '2025-02-12', 'vyřízena', 'ZK4', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (18, '2025-08-11', 'vyřízena', 'ZK6', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (19, '2025-10-08', 'zpracovává se', 'ZK9', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (20, '2025-03-17', 'zpracovává se', 'ZK17', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (21, '2025-09-28', 'zrušena', 'ZK10', 3);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (22, '2025-02-19', 'zrušena', 'ZK20', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (23, '2025-11-05', 'zpracovává se', 'ZK12', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (24, '2025-02-25', 'zrušena', 'ZK17', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (25, '2025-10-15', 'zrušena', 'ZK11', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (26, '2025-01-02', 'zpracovává se', 'ZK4', 2);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (27, '2025-02-10', 'vyřízena', 'ZK8', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (28, '2025-02-05', 'zpracovává se', 'ZK19', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (29, '2025-09-26', 'zpracovává se', 'ZK16', 1);
INSERT INTO objednavky (id_objednavky, datum, stav, id_zakaznika, id_zpusobu) VALUES (30, '2025-09-07', 'zrušena', 'ZK5', 1);

-- polozky_objednavky
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P8', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (6, 'P5', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (28, 'P10', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (7, 'P15', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (25, 'P12', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (23, 'P5', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P11', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (15, 'P15', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (15, 'P2', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (8, 'P2', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (1, 'P10', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (8, 'P10', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (1, 'P2', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (8, 'P2', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (28, 'P6', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (17, 'P4', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P8', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (18, 'P3', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (19, 'P8', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (26, 'P8', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (7, 'P2', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P7', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (14, 'P7', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (28, 'P12', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P11', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (2, 'P7', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (26, 'P14', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (8, 'P4', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (18, 'P8', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (14, 'P3', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (15, 'P4', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (15, 'P13', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (4, 'P1', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (27, 'P1', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (30, 'P13', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (6, 'P7', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (16, 'P4', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (29, 'P1', 2);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (13, 'P1', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (9, 'P15', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (10, 'P7', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (22, 'P12', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (5, 'P4', 3);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (7, 'P1', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (24, 'P9', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (24, 'P6', 1);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (2, 'P10', 4);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (17, 'P15', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (6, 'P1', 5);
INSERT INTO polozky_objednavky (id_objednavky, id_produktu, pocet_kusu) VALUES (3, 'P14', 2);
