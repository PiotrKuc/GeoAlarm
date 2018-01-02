
insert into kluby_lekkoatletyczne values (seq_kluby_lekkoatletyczne.nextval, 'AZS Politechnika Warszawska', 'Warszawa',2015, 'Warynskiego', 1, 12);
insert into kluby_lekkoatletyczne values (seq_kluby_lekkoatletyczne.nextval, 'AZS Politechnika Wroclawska', 'Warszawa',2011, 'Polna',null, 25);

insert into zawodnicy values (seq_zawodnicy.nextval, to_date('21-12-2017', 'DD-MM-YYYY'), 1, 'Piotr', 'Czekolada', to_date('11-06-1995', 'DD-MM-YYYY'), 51247854621, 485135649, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('22-11-2016', 'DD-MM-YYYY'), 1, 'Janusz', 'Kowalski', to_date('12-07-1978', 'DD-MM-YYYY'), 95124788543, 851321875, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('23-05-2017', 'DD-MM-YYYY'), 1, 'Pawel', 'Nowak', to_date('13-08-1998', 'DD-MM-YYYY'), 89542154878, 798431457, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('24-08-2016', 'DD-MM-YYYY'), 1, 'Wieslaw', 'Nowacyzk', to_date('14-08-1948', 'DD-MM-YYYY'), 78451321548, 654345487, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('14-12-2017', 'DD-MM-YYYY'), 1, 'Marek', 'Nieygoda', to_date('15-04-1997', 'DD-MM-YYYY'), 64845132189, 504644078, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('01-06-2016', 'DD-MM-YYYY'), 1, 'Marcin', 'Myszkowski', to_date('16-03-1980', 'DD-MM-YYYY'), 91454131578, 765400488, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('04-01-2017', 'DD-MM-YYYY'), 1, 'Michal', 'Trenda', to_date('17-05-1960', 'DD-MM-YYYY'), 90546246488, 640840465, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('06-02-2016', 'DD-MM-YYYY'), 1, 'Hubert', 'Turan', to_date('18-11-1979', 'DD-MM-YYYY'), 90540654087, 879087407, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('10-03-2017', 'DD-MM-YYYY'), 1, 'Dawid', 'Rudy', to_date('19-05-1981', 'DD-MM-YYYY'), 45494798450, 832174765, 'M');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('11-11-2016', 'DD-MM-YYYY'), 1, 'Janina', 'Czekolada',     to_date('14-06-1996', 'DD-MM-YYYY'), 51248795645, 987708897, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('12-12-2016', 'DD-MM-YYYY'), 1, 'Halina', 'Kowalska',      to_date('11-07-1979', 'DD-MM-YYYY'), 51247845197, 798704408, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('13-02-2017', 'DD-MM-YYYY'), 1, 'Dominika', 'Nowak',       to_date('13-08-1993', 'DD-MM-YYYY'), 69521845754, 798045087, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('22-01-2016', 'DD-MM-YYYY'), 1, 'Liljana', 'Nowaczyk',     to_date('17-08-1946', 'DD-MM-YYYY'), 78543659145, 800046540, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('12-11-2017', 'DD-MM-YYYY'), 1, 'Monika', 'Nieygoda',      to_date('12-04-1994', 'DD-MM-YYYY'), 84695187264, 684808479, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('12-08-2016', 'DD-MM-YYYY'), 1, 'Matylda', 'Myszkowska',   to_date('08-03-1983', 'DD-MM-YYYY'), 64978513212, 879087458, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('07-07-2017', 'DD-MM-YYYY'), 1, 'Agnieszka', 'Trenda',     to_date('11-05-1966', 'DD-MM-YYYY'), 51948795654, 708498075, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('01-06-2016', 'DD-MM-YYYY'), 1, 'Dorota', 'Turan',         to_date('12-11-1977', 'DD-MM-YYYY'), 95281648756, 606514002, 'K');
insert into zawodnicy values (seq_zawodnicy.nextval, to_date('19-05-2017', 'DD-MM-YYYY'), 1, 'Aleksandra', 'Rudy',      to_date('14-05-1983', 'DD-MM-YYYY'), 98465871254, 845791352, 'K');


insert into pracownicy values (seq_pracownicy.nextval, 'Aleksandra', 'Rudy', to_date('14-05-1983', 'DD-MM-YYYY'), 98465871254, 'M', 845791352, to_date('19-05-2017','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Aleksandra', 'Amanowicz',   to_date('14-10-1983', 'DD-MM-YYYY'), 94875612384, 'K', 784579854, to_date('15-11-2015','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Monika', 'Gadomska',        to_date('01-05-1983', 'DD-MM-YYYY'), 84657819452, 'K', 987808487, to_date('12-09-2016','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Roksana', 'Ignac',          to_date('12-11-1983', 'DD-MM-YYYY'), 78945132168, 'K', 809845487, to_date('14-08-2017','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Milena', 'Kobajn',          to_date('13-12-1983', 'DD-MM-YYYY'), 98765413214, 'K', 532404084, to_date('16-07-2017','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Karolina', 'Kotorowska',    to_date('23-04-1983', 'DD-MM-YYYY'), 65489435121, 'K', 480494054, to_date('17-06-2016','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Otylia', 'Bocian',          to_date('21-12-1983', 'DD-MM-YYYY'), 78453184875, 'K', 870545065, to_date('12-05-2015','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Joanna', 'Motyl',           to_date('13-05-1983', 'DD-MM-YYYY'), 98743213215, 'K', 987054540, to_date('13-03-2015','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Izabela', 'Dudek',          to_date('27-02-1983', 'DD-MM-YYYY'), 90840407474, 'K', 540648798, to_date('14-01-2016','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Alicja', 'Rogala',          to_date('17-07-1983', 'DD-MM-YYYY'), 70940545098, 'K', 894045497, to_date('16-02-2017','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Urszula', 'Smaruj',         to_date('01-05-1983', 'DD-MM-YYYY'), 64040448408, 'K', 654048409, to_date('18-03-2015','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Katarzyna', 'Kret',         to_date('06-03-1983', 'DD-MM-YYYY'), 56054584514, 'K', 980123184, to_date('19-04-2016','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Anna', 'Kopec',             to_date('30-01-1983', 'DD-MM-YYYY'), 45640787054, 'K', 710846842, to_date('12-05-2017','DD-MM-YYYY'),1 );
insert into pracownicy values (seq_pracownicy.nextval, 'Sylwia', 'Cichorak',        to_date('28-02-1983', 'DD-MM-YYYY'), 70645454778, 'K', 809845464, to_date('02-06-2017','DD-MM-YYYY'),1 );


INSERT INTO TRENERZY VALUES (9123, 'AWF Warszawa', 1, SEQ_TRENERZY.NEXTVAL);
INSERT INTO TRENERZY VALUES (9132, 'AWF Lublin', 4, SEQ_TRENERZY.NEXTVAL);
INSERT INTO TRENERZY VALUES (9445, 'AWF Olsztyn', 6, SEQ_TRENERZY.NEXTVAL);
INSERT INTO TRENERZY VALUES (7563, 'AWF Gdynia', 11, SEQ_TRENERZY.NEXTVAL);
INSERT INTO TRENERZY VALUES (9145, 'Warszawski Uniwersytet Medyczny', 14, SEQ_TRENERZY.NEXTVAL);

INSERT INTO MASAZYSCI VALUES (854, 'Kazimierski Uniwersytet Fizjoterapii', 2, SEQ_TRENERZY.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (543, 'AWF Zakopane', 3, SEQ_TRENERZY.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (944, 'Uniwersytet Warszawski', 12, SEQ_TRENERZY.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (756, 'Akademia Medyczna w Radomiu', 13, SEQ_TRENERZY.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (445, 'AWF Gdynia', 10, SEQ_TRENERZY.NEXTVAL);

insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut oszczepem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut młotem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut dyskiem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Pchnięcie kulą');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 100m kobiet');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 110m przez płotki mężczyzn');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Skok w dal');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 400m kobiet');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 400m mężczyzn');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 800m kobiet');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 800m mężczyzn');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Skok o tyczce');

insert into obiekty values (seq_obiekty.nextval, 'Hala sportowa OSIR Mokotów', 'Warszawa', 'Ulanska', 11,null,1);
insert into obiekty values (seq_obiekty.nextval, 'Stadion PGE Narodowy', 'Warszawa', 'Polna', 123,null,1);
insert into obiekty values (seq_obiekty.nextval, 'Siłownia Calypso', 'Warszawa', 'Niezgodna', 32,41,1);
insert into obiekty values (seq_obiekty.nextval, 'Hala sportowa MOSIR w Puławach', 'Puławy', 'Centralna', 54,null,1);
insert into obiekty values (seq_obiekty.nextval, 'Stadion Wisły Puławy', 'Puławy', 'Malinowa', 1,null,1);
insert into obiekty values (seq_obiekty.nextval, 'Siłownia Alcatraz', 'Warszawa', 'Domaniewskiego', 101,5,1);
insert into obiekty values (seq_obiekty.nextval, 'Siłownia Alien', 'Puławy', 'Paderewskiego', 32,1,1);
insert into obiekty values (seq_obiekty.nextval, 'Ośrodek Rehabilitacji w Arłamowie', 'Arłamów', 'Dmowskiego', 1,null,1);
insert into obiekty values (seq_obiekty.nextval, 'Sala gimnastyczna Riviera', 'Warszawa', 'Orzeszkowej', 12,2,1);
insert into obiekty values (seq_obiekty.nextval, 'Sala gimnastyczna Alcatraz', 'Warszawa', 'Konarskiego', 21,141,1);
insert into obiekty values (seq_obiekty.nextval, 'Sala gimnastyczna na Torwarze', 'Warszawa', 'Wawelska', 76,211,1);



skasowac rekordy z dyscypliny
powiekszyc rozmiar nazwy obiektu
dodac zwyciezce do turniejow ?
dodac indexy na nazwie dyscypliny i obiektu

