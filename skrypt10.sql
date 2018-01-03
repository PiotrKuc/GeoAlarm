-- Create tables section

-- Table KLUBY_LEKKOATLETYCZNE

CREATE TABLE "KLUBY_LEKKOATLETYCZNE"(
  "ID_KLUBU" Number NOT NULL,
  "NAZWA_KLUBU" Varchar2(30 ) NOT NULL,
  "ADRES_MIASTO" Varchar2(10 ) NOT NULL,
  "ADRES_ULICA" Varchar2(20 ) NOT NULL,
  "ADRES_NUMER_MIESZKANIA" Number,
  "ADRES_NUMER_BLOKU" Number NOT NULL,
 CONSTRAINT "Key6" PRIMARY KEY ("ID_KLUBU")
)
/

-- Table OBIEKTY

CREATE TABLE "OBIEKTY"(
  "ID_OBIEKTU" Number NOT NULL,
  "NAZWA_OBIEKTU" Varchar2(60 ) NOT NULL,
  "ADRES_MIASTO" Varchar2(10 ) NOT NULL,
  "ADRES_ULICA" Varchar2(20 ) NOT NULL,
  "ADRES_NUMER_DOMU" Number NOT NULL,
  "ADRES_NUMER_MIESZKANIA" Number,
  "ID_KLUBU" Number NOT NULL,
 CONSTRAINT "Key7" PRIMARY KEY ("ID_OBIEKTU"),
 CONSTRAINT "posiada" FOREIGN KEY ("ID_KLUBU") REFERENCES "KLUBY_LEKKOATLETYCZNE" ("ID_KLUBU")
)
/

-- Create indexes for table OBIEKTY

CREATE INDEX "IX_Relationship16" ON "OBIEKTY" ("ID_KLUBU")
/

-- Table DYSCYPLINY

CREATE TABLE "DYSCYPLINY"(
  "ID_DYSCYPLINY" Number NOT NULL,
  "NAZWA_DYSCYPLINY" Varchar2(60 ) NOT NULL,
 CONSTRAINT "Key9" PRIMARY KEY ("ID_DYSCYPLINY")
)
/

-- Table ZAWODNICY

CREATE TABLE "ZAWODNICY"(
  "ID_ZAWODNIKA" Number NOT NULL,
  "DATA_PRZYJECIA_DO_KLUBU" Date NOT NULL,
  "ID_KLUBU" Number NOT NULL,
  "IMIE" Varchar2(20 ) NOT NULL,
  "NAZWISKO" Varchar2(30 ) NOT NULL,
  "DATA_URODZENIA" Date NOT NULL,
  "PESEL" Number(11,0) NOT NULL,
  "TELEFON_KONTAKTOWY" Number NOT NULL,
  "PLEC" Char(1 ) NOT NULL,
 CONSTRAINT "Key4" PRIMARY KEY ("ID_ZAWODNIKA"),
 CONSTRAINT "wychowuje" FOREIGN KEY ("ID_KLUBU") REFERENCES "KLUBY_LEKKOATLETYCZNE" ("ID_KLUBU")
)
/

-- Create indexes for table ZAWODNICY

CREATE INDEX "IX_Relationship19" ON "ZAWODNICY" ("ID_KLUBU")
/

-- Table PRACOWNICY

CREATE TABLE "PRACOWNICY"(
  "ID_PRACOWNIKA" Number NOT NULL,
  "IMIE" Varchar2(20 ) NOT NULL,
  "NAZWISKO" Varchar2(30 ) NOT NULL,
  "DATA_URODZENIA" Date NOT NULL,
  "PESEL" Number(11,0) NOT NULL,
  "PLEC" Char(1 ) NOT NULL,
  "TELEFON_KONTAKTOWY" Number NOT NULL,
  "DATA_ZATRUDNIENIA" Date DEFAULT ON NULL SYSDATE NOT NULL,
  "ID_KLUBU" Number NOT NULL,
 CONSTRAINT "Key3" PRIMARY KEY ("ID_PRACOWNIKA"),
 CONSTRAINT "zatrudnia" FOREIGN KEY ("ID_KLUBU") REFERENCES "KLUBY_LEKKOATLETYCZNE" ("ID_KLUBU")
)
/

-- Create indexes for table PRACOWNICY

CREATE INDEX "IX_Relationship15" ON "PRACOWNICY" ("ID_KLUBU")
/

-- Table TRENERZY

CREATE TABLE "TRENERZY"(
  "NR_LICENCJI" Number NOT NULL,
  "UKONCZONA_SZKOLA" Varchar2(50 ),
  "ID_PRACOWNIKA" Number NOT NULL,
  "ID_TRENERA" Number NOT NULL,
 CONSTRAINT "Key1" PRIMARY KEY ("ID_TRENERA"),
 CONSTRAINT "posiada_uprawnienia" FOREIGN KEY ("ID_PRACOWNIKA") REFERENCES "PRACOWNICY" ("ID_PRACOWNIKA")
)
/

-- Create indexes for table TRENERZY

CREATE INDEX "IX_Relationship3" ON "TRENERZY" ("ID_PRACOWNIKA")
/

-- Table MASAZYSCI

CREATE TABLE "MASAZYSCI"(
  "NR_LICENCJI" Number NOT NULL,
  "UKONCZONA_SZKOLA" Varchar2(50 ),
  "ID_PRACOWNIKA" Number NOT NULL,
  "ID_MASAZYSTY" Number NOT NULL,
 CONSTRAINT "PK_MASAZYSCI" PRIMARY KEY ("ID_MASAZYSTY"),
 CONSTRAINT "posiada_wyksztalcenie" FOREIGN KEY ("ID_PRACOWNIKA") REFERENCES "PRACOWNICY" ("ID_PRACOWNIKA")
)
/

-- Create indexes for table MASAZYSCI

CREATE INDEX "IX_Relationship2" ON "MASAZYSCI" ("ID_PRACOWNIKA")
/

-- Table TRENINGI

CREATE TABLE "TRENINGI"(
  "DATA_ROZPOCZECIA" Date NOT NULL,
  "DATA_ZAKONCZENIA" Date NOT NULL,
  "ID_TRENINGU" Number NOT NULL,
  "ID_TRENERA" Number NOT NULL,
  "ID_OBIEKTU" Number NOT NULL,
  "ID_DYSCYPLINY" Number NOT NULL,
 CONSTRAINT "PK_TRENINGI" PRIMARY KEY ("ID_TRENINGU"),
 CONSTRAINT "organizuje_trening_na" FOREIGN KEY ("ID_OBIEKTU") REFERENCES "OBIEKTY" ("ID_OBIEKTU"),
 CONSTRAINT "rozgrywany_trening_w" FOREIGN KEY ("ID_DYSCYPLINY") REFERENCES "DYSCYPLINY" ("ID_DYSCYPLINY"),
 CONSTRAINT "przeprowadza" FOREIGN KEY ("ID_TRENERA") REFERENCES "TRENERZY" ("ID_TRENERA")
)
/

-- Create indexes for table TRENINGI

CREATE INDEX "IX_Relationship18" ON "TRENINGI" ("ID_OBIEKTU")
/

CREATE INDEX "IX_Relationship20" ON "TRENINGI" ("ID_DYSCYPLINY")
/

CREATE INDEX "IX_Relationship22" ON "TRENINGI" ("ID_TRENERA")
/

-- Table TURNIEJE

CREATE TABLE "TURNIEJE"(
  "DATA_ROZPOCZECIA" Date NOT NULL,
  "DATA_ZAKONCZENIA" Date NOT NULL,
  "ID_TURNIEJU" Number NOT NULL,
  "ID_OBIEKTU" Number NOT NULL,
  "ID_DYSCYPLINY" Number NOT NULL,
  "NAZWA_TURNIEJU" Varchar2(60 ) NOT NULL,
 CONSTRAINT "PK_TURNIEJE" PRIMARY KEY ("ID_TURNIEJU"),
 CONSTRAINT "organizuje_turniej_na" FOREIGN KEY ("ID_OBIEKTU") REFERENCES "OBIEKTY" ("ID_OBIEKTU"),
 CONSTRAINT "rozgrywany_turniej_w" FOREIGN KEY ("ID_DYSCYPLINY") REFERENCES "DYSCYPLINY" ("ID_DYSCYPLINY")
)
/

-- Create indexes for table TURNIEJE

CREATE INDEX "IX_Relationship17" ON "TURNIEJE" ("ID_OBIEKTU")
/

CREATE INDEX "IX_Relationship23" ON "TURNIEJE" ("ID_DYSCYPLINY")
/

-- Table SPRAWOWANIE_OPIEKI

CREATE TABLE "SPRAWOWANIE_OPIEKI"(
  "ID_ZAWODNIKA" Number NOT NULL,
  "ID_TRENOWANEJ_DYSCYPLINY" Number NOT NULL,
  "ID_TRENERA" Number NOT NULL,
 CONSTRAINT "Key10" PRIMARY KEY ("ID_ZAWODNIKA","ID_TRENERA"),
 CONSTRAINT "sprawuje_opieke" FOREIGN KEY ("ID_TRENERA") REFERENCES "TRENERZY" ("ID_TRENERA"),
 CONSTRAINT "jest_pod_opieka" FOREIGN KEY ("ID_ZAWODNIKA") REFERENCES "ZAWODNICY" ("ID_ZAWODNIKA")
)
/

-- Table SPECJALIZACJE

CREATE TABLE "SPECJALIZACJE"(
  "ID_TRENERA" Number NOT NULL,
  "ID_DYSCYPLINY" Number NOT NULL,
 CONSTRAINT "Key11" PRIMARY KEY ("ID_DYSCYPLINY","ID_TRENERA"),
 CONSTRAINT "posiada_specjalizacje" FOREIGN KEY ("ID_TRENERA") REFERENCES "TRENERZY" ("ID_TRENERA"),
 CONSTRAINT "jest_nauczana" FOREIGN KEY ("ID_DYSCYPLINY") REFERENCES "DYSCYPLINY" ("ID_DYSCYPLINY")
)
/

-- Table TRENINGI_UCZESTNICTWO

CREATE TABLE "TRENINGI_UCZESTNICTWO"(
  "ID_TRENINGU" Number NOT NULL,
  "ID_ZAWODNIKA" Number NOT NULL,
 CONSTRAINT "Key12" PRIMARY KEY ("ID_TRENINGU","ID_ZAWODNIKA"),
 CONSTRAINT "uczestniczy_w" FOREIGN KEY ("ID_ZAWODNIKA") REFERENCES "ZAWODNICY" ("ID_ZAWODNIKA"),
 CONSTRAINT "jest_obecny_na" FOREIGN KEY ("ID_TRENINGU") REFERENCES "TRENINGI" ("ID_TRENINGU")
)
/

-- Table TURNIEJE_UCZESTNICTWO

CREATE TABLE "TURNIEJE_UCZESTNICTWO"(
  "ID_TURNIEJU" Number NOT NULL,
  "ID_ZAWODNIKA" Number NOT NULL,
 CONSTRAINT "Key13" PRIMARY KEY ("ID_TURNIEJU","ID_ZAWODNIKA"),
 CONSTRAINT "dokonuje_zapisu" FOREIGN KEY ("ID_ZAWODNIKA") REFERENCES "ZAWODNICY" ("ID_ZAWODNIKA"),
 CONSTRAINT "jest_zapisany_na" FOREIGN KEY ("ID_TURNIEJU") REFERENCES "TURNIEJE" ("ID_TURNIEJU")
)
/

-- Table TRENOWANE_DYSCYPLINY

CREATE TABLE "TRENOWANE_DYSCYPLINY"(
  "ID_ZAWODNIKA" Number NOT NULL,
  "ID_DYSCYPLINY" Number NOT NULL,
 CONSTRAINT "Key14" PRIMARY KEY ("ID_ZAWODNIKA","ID_DYSCYPLINY"),
 CONSTRAINT "trenuje" FOREIGN KEY ("ID_ZAWODNIKA") REFERENCES "ZAWODNICY" ("ID_ZAWODNIKA"),
 CONSTRAINT "jest_trenowana" FOREIGN KEY ("ID_DYSCYPLINY") REFERENCES "DYSCYPLINY" ("ID_DYSCYPLINY")
)
/

alter table pracownicy add constraint check_plec_pracownikow check (plec in ('K','M'));
alter table zawodnicy add constraint check_plec_zawodnikow check (plec in ('K','M'));


-- SEQUENCES

create sequence seq_dyscypliny start with 1 increment by 1;
create sequence seq_turnieje start with 1 increment by 1;
create sequence seq_zawodnicy start with 1 increment by 1;
create sequence seq_pracownicy start with 1 increment by 1;
create sequence seq_kluby_lekkoatletyczne start with 1 increment by 1;
create sequence seq_masazysci start with 1 increment by 1;
create sequence seq_trenerzy start with 1 increment by 1;
create sequence seq_treningi start with 1 increment by 1;
create sequence seq_obiekty start with 1 increment by 1;

-- INDEXES

create index ix_nazwa_dyscypliny on dyscypliny (id_dyscypliny, nazwa_dyscypliny);
create index ix_nazwa_obiektu on obiekty (id_obiektu, nazwa_obiektu);
create index ix_nazwa_turnieju on turnieje (id_turnieju, nazwa_turnieju);

-- INSERTS

insert into kluby_lekkoatletyczne values (seq_kluby_lekkoatletyczne.nextval, 'AZS Politechnika Warszawska', 'Warszawa', 'Warynskiego', 1, 12);
insert into kluby_lekkoatletyczne values (seq_kluby_lekkoatletyczne.nextval, 'AZS Politechnika Wroclawska', 'Warszawa', 'Polna',null, 25);

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

INSERT INTO MASAZYSCI VALUES (854, 'Kazimierski Uniwersytet Fizjoterapii', 2, seq_masazysci.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (543, 'AWF Zakopane', 3, seq_masazysci.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (944, 'Uniwersytet Warszawski', 12, seq_masazysci.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (756, 'Akademia Medyczna w Radomiu', 13, seq_masazysci.NEXTVAL);
INSERT INTO MASAZYSCI VALUES (445, 'AWF Gdynia', 10, seq_masazysci.NEXTVAL);

insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut oszczepem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut młotem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Rzut dyskiem');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Pchnięcie kulą');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 100m');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 110m przez płotki');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Skok w dal');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 400m przez płotki');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 400m');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 800m przez płotki');
insert into dyscypliny (id_dyscypliny, nazwa_dyscypliny) values (seq_dyscypliny.nextval, 'Bieg na 800m');
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

insert into turnieje values (to_date('21-06-2018','DD-MM-YYYY'), to_date('22-07-2018','DD-MM-YYYY'), seq_turnieje.nextval, 1, 2, 'Mistrzostwa Świata');
insert into turnieje values (to_date('22-05-2019','DD-MM-YYYY'), to_date('29-05-2019','DD-MM-YYYY'), seq_turnieje.nextval, 3, 4, 'Mistrzostwa Europy');
insert into turnieje values (to_date('23-11-2020','DD-MM-YYYY'), to_date('23-12-2020','DD-MM-YYYY'), seq_turnieje.nextval, 4, 5, 'Mistrzostwa Świata Halowej Lekkoatletyki');
insert into turnieje values (to_date('24-02-2018','DD-MM-YYYY'), to_date('12-03-2018','DD-MM-YYYY'), seq_turnieje.nextval, 5, 6, 'Turniej o Diament Lekkoatletyczny');
insert into turnieje values (to_date('25-05-2019','DD-MM-YYYY'), to_date('01-06-2019','DD-MM-YYYY'), seq_turnieje.nextval, 1, 5, 'Mistrzostwa Polski');
insert into turnieje values (to_date('16-09-2022','DD-MM-YYYY'), to_date('12-12-2022','DD-MM-YYYY'), seq_turnieje.nextval, 6, 4, 'Mistrzostwa Świata');

insert into treningi values (to_date('12-12-2017 12:00','DD-MM-YYYY HH24:MI'),to_date('12-12-2017 14:00','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 1, 1, 1);
insert into treningi values (to_date('13-12-2017 12:30','DD-MM-YYYY HH24:MI'),to_date('13-12-2017 15:45','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 2, 2, 2);
insert into treningi values (to_date('14-12-2017 13:45','DD-MM-YYYY HH24:MI'),to_date('14-12-2017 14:45','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 3, 3, 5);
insert into treningi values (to_date('15-12-2017 15:15','DD-MM-YYYY HH24:MI'),to_date('15-12-2017 16:45','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 1, 2, 4);
insert into treningi values (to_date('16-12-2017 15:00','DD-MM-YYYY HH24:MI'),to_date('16-12-2017 16:45','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 4, 2, 5);
insert into treningi values (to_date('17-12-2017 14:00','DD-MM-YYYY HH24:MI'),to_date('17-12-2017 16:30','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 1, 3, 4);
insert into treningi values (to_date('18-12-2017 19:30','DD-MM-YYYY HH24:MI'),to_date('18-12-2017 21:30','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 2, 2, 7);
insert into treningi values (to_date('19-12-2017 21:00','DD-MM-YYYY HH24:MI'),to_date('19-12-2017 23:30','DD-MM-YYYY HH24:MI'), seq_treningi.nextval, 1, 4, 4);

insert into sprawowanie_opieki values (1, 1, 1);
insert into sprawowanie_opieki values (2, 2, 2);
insert into sprawowanie_opieki values (3, 3, 3);
insert into sprawowanie_opieki values (4, 4, 4);
insert into sprawowanie_opieki values (5, 5, 5);
insert into sprawowanie_opieki values (6, 6, 1);
insert into sprawowanie_opieki values (7, 7, 2);
insert into sprawowanie_opieki values (8, 8, 3);
insert into sprawowanie_opieki values (9, 9, 4);
insert into sprawowanie_opieki values (10, 10, 5);
insert into sprawowanie_opieki values (11, 11, 1);
insert into sprawowanie_opieki values (12, 12, 2);
insert into sprawowanie_opieki values (13, 1, 3);
insert into sprawowanie_opieki values (14, 2, 4);
insert into sprawowanie_opieki values (15, 3, 5);
insert into sprawowanie_opieki values (16, 4, 1);
insert into sprawowanie_opieki values (17, 5, 2);
insert into sprawowanie_opieki values (18, 6, 3);
insert into sprawowanie_opieki values (12, 7, 4);
insert into sprawowanie_opieki values (13, 8, 5);
insert into sprawowanie_opieki values (14, 9, 1);
insert into sprawowanie_opieki values (15, 10,2);
insert into sprawowanie_opieki values (16, 11, 3);
insert into sprawowanie_opieki values (17, 12, 4);
insert into sprawowanie_opieki values (18, 1, 5);

insert into turnieje_uczestnictwo values (1, 4);
insert into turnieje_uczestnictwo values (2, 3);
insert into turnieje_uczestnictwo values (3, 2);
insert into turnieje_uczestnictwo values (4, 13);
insert into turnieje_uczestnictwo values (5, 12);
insert into turnieje_uczestnictwo values (6, 12);
insert into turnieje_uczestnictwo values (1, 12);
insert into turnieje_uczestnictwo values (2, 12);
insert into turnieje_uczestnictwo values (3, 13);
insert into turnieje_uczestnictwo values (5, 16);
insert into turnieje_uczestnictwo values (5, 11);
insert into turnieje_uczestnictwo values (6, 10);
insert into turnieje_uczestnictwo values (1, 9);
insert into turnieje_uczestnictwo values (1, 8);
insert into turnieje_uczestnictwo values (1, 7);
insert into turnieje_uczestnictwo values (3, 6);
insert into turnieje_uczestnictwo values (3, 5);
insert into turnieje_uczestnictwo values (3, 4);
insert into turnieje_uczestnictwo values (3, 3);
insert into turnieje_uczestnictwo values (3, 17);
insert into turnieje_uczestnictwo values (3, 1);


insert into treningi_uczestnictwo values (1,1);
insert into treningi_uczestnictwo values (2,2);
insert into treningi_uczestnictwo values (3,3);
insert into treningi_uczestnictwo values (4,4);
insert into treningi_uczestnictwo values (5,5);
insert into treningi_uczestnictwo values (6,6);
insert into treningi_uczestnictwo values (7,7);
insert into treningi_uczestnictwo values (8,8);
insert into treningi_uczestnictwo values (1,9);
insert into treningi_uczestnictwo values (2,10);
insert into treningi_uczestnictwo values (3,11);
insert into treningi_uczestnictwo values (4,12);
insert into treningi_uczestnictwo values (5,13);
insert into treningi_uczestnictwo values (6,14);
insert into treningi_uczestnictwo values (7,15);



insert into specjalizacje values (3,1);
insert into specjalizacje values (2,2);
insert into specjalizacje values (1,3);
insert into specjalizacje values (5,4);
insert into specjalizacje values (4,5);
insert into specjalizacje values (3,6);
insert into specjalizacje values (2,7);
insert into specjalizacje values (1,8);
insert into specjalizacje values (5,9);
insert into specjalizacje values (4,10);
insert into specjalizacje values (3,11);
insert into specjalizacje values (2,12);
insert into specjalizacje values (1,9);


select z.imie as Imię_Zawodnika, z.nazwisko as Nazwisko_Zawodnika, d.nazwa_dyscypliny,p.imie as Imie_Trenera, p.Nazwisko as Nazwisko_Trenera
from zawodnicy z join sprawowanie_opieki so on so.id_zawodnika = z.id_zawodnika
join trenerzy t on so.id_trenera = t.id_trenera
join pracownicy p on p.id_pracownika = t.id_pracownika
join dyscypliny d on d.id_dyscypliny = so.id_trenowanej_dyscypliny; 

SELECT so.id_trenera as ID_Trenera, 
count(so.id_zawodnika) as Liczba_podopiecznych, 
LISTAGG(d.nazwa_dyscypliny, ', ') WITHIN GROUP (ORDER BY d.id_dyscypliny desc) as Dyscypliny 
FROM sprawowanie_opieki so join dyscypliny d on d.id_dyscypliny = so.id_trenowanej_dyscypliny
GROUP BY so.id_trenera;

select p.*, t.NR_licencji as NR_LICENCJI_TRENERSKIEJ, m.NR_licencji as NR_LICENCJI_MASAZYSTY, nvl(t.ukonczona_szkola, m.ukonczona_szkola) AS UKONCZONA_SZKOLA
from pracownicy p left join trenerzy t on t.id_pracownika = p.id_pracownika left join masazysci m on m.id_pracownika = p.id_pracownika;

select tren.id_dyscypliny, count(tren.id_treningu) as LICZBA_TRENINGOW_TURNIEJOWSKICH_DYSCYPLIN from treningi tren group by tren.id_dyscypliny
having exists(select * from turnieje tur where tur.id_dyscypliny = tren.id_dyscypliny ) order by LICZBA_TRENINGOW_TURNIEJOWSKICH_DYSCYPLIN desc;
















