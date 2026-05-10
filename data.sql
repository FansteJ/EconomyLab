USE mydb;

-- 1. Tip_Eksperiment (Iz specifikacije: ponuda i tražnja, aukcija, monopol...)
INSERT INTO Tip_Eksperiment (ID_Tip, Naziv, Opis) VALUES
(1, 'Ponuda i traznja', 'Model formiranja cena na trzistu'),
(2, 'Aukcija', 'Ispitivanje tipova aukcija'),
(3, 'Savrsena konkurencija', 'Veliki broj kupaca i prodavaca'),
(4, 'Monopol', 'Trziste gde jedan diktira cenu'),
(5, 'Oligopol', 'Mali broj dominantnih firmi');

-- 2. Laboratorija (Softverske platforme za ekonomiju)
INSERT INTO Laboratorija (Naziv, Opis) VALUES
('Lab za bihevioralnu ekonomiju', 'Fizicka laboratorija za testiranje odluka ucesnika'),
('Virtuelna berza', 'Softverska platforma za simulaciju trgovanja akcijama'),
('Aukcijska soba', 'Sistem za sprovodjenje engleskih i holandskih aukcija'),
('Makroekonomski simulator', 'Platforma za testiranje drzavnih politika'),
('Lab za teoriju igara', 'Mreza racunara za simulaciju strateskih interakcija');

-- 3. Tip_Alat (Ekonomski modeli i softveri)
INSERT INTO Tip_Alat (Naziv, Opis) VALUES
('Model aukcije', 'Softverski alat za sprovodjenje licitacija'),
('Model savrsene konkurencije', 'Matematicki model za izracunavanje ravnotezne cene'),
('Statisticki paket', 'Program za ekonometrijsku analizu podataka (npr. STATA, R)'),
('Trading bot', 'Algoritam za automatsko trgovanje na berzi'),
('Kalkulator rizika', 'Alat za procenu finansijskog rizika i verovatnoce bankrota');

-- 4. Teorija (Ekonomske teorije)
INSERT INTO Teorija (Naziv, Opis) VALUES
('Teorija igara', 'Matematicko modelovanje strateskih interakcija'),
('Kejnzijanska ekonomija', 'Uloga drzavne intervencije u makroekonomiji'),
('Teorija racionalnog izbora', 'Pretpostavka da pojedinci maksimizuju svoju korisnost'),
('Teorija efikasnog trzista', 'Cene na trzistu uvek odrazavaju sve dostupne informacije'),
('Teorija asimetricnih informacija', 'Kada jedna strana u transakciji ima vise informacija od druge');

-- 5. Resursi (Proizvodi, sirovine i novcana sredstva)
INSERT INTO Resurs (Naziv, Cena) VALUES
('Novac - RSD', 1), ('Novac - EUR', 117), ('Novac - USD', 108), 
('Nafta (Barel)', 8500), ('Psenica (Tona)', 25000), ('Zlato (Unca)', 220000), 
('Srebro (Unca)', 3000), ('Bakar (Tona)', 950000), ('Akcija kompanije Apple', 18000), 
('Akcija kompanije Tesla', 21000), ('Drzavna obveznica RS', 10000), 
('Kriptovaluta Bitcoin', 7000000), ('Kriptovaluta Ethereum', 350000), 
('Kukuruz (Tona)', 18000), ('Secer (Tona)', 45000), ('Celulozna vlakna (Tona)', 80000), 
('Radni sat - NKV radnik', 400), ('Radni sat - IT strucnjak', 2500), 
('Informacija o spajanju firmi', 50000), ('Pravo na emisiju CO2', 8500);

-- 6. Eksperiment (Ekonomske simulacije)
INSERT INTO Eksperiment (Naziv, ID_Tip) VALUES
('Formiranje cene nafte u krizi', 1), ('Engleska aukcija za umetnicke slike', 2),
('Holandska aukcija za drzavne obveznice', 2), ('Uticaj poreza na trziste psenice', 1),
('Kartelizacija na trzistu telekomunikacija', 5), ('Cenovni rat izmedju supermarketa', 5),
('Monopolsko formiranje cene lekova', 4), ('Efekat minimalne zarade na zaposlenost', 1),
('Trgovina kriptovalutama usled panike', 3), ('Aukcija prve cene na slepo (Tender)', 2),
('Simulacija berzanskog balona (Crash)', 3), ('Oportunisticko ponasanje menadzera', 4),
('Trziste polovnih automobila (Lemons)', 1), ('Aukcija za dodelu 5G frekvencija', 2),
('Subvencije u poljoprivredi', 3), ('Zatvorenikova dilema - Duopol', 5),
('Cenovna diskriminacija avionskih karata', 4), ('Investicije u inovacije na oligopolu', 5),
('Efekat stampanja novca na inflaciju', 1), ('Ponasanje kupaca pri rasprodajama', 3);

-- =======================================================
-- 1. ISTRAZIVACI (100 ekonomista, analiticara i brokera)
-- =======================================================
INSERT INTO Istrazivac (Ime, Prezime, Kvalifikacije) VALUES
('Marko', 'Jovanovic', 'Doktor makroekonomije'), ('Ana', 'Petrovic', 'Master finansija'),
('Stefan', 'Nikolic', 'Berzanski broker'), ('Milica', 'Markovic', 'Finansijski analiticar'),
('Nikola', 'Djordjevic', 'Kvantitativni analiticar'), ('Jelena', 'Stojanovic', 'Master ekonomista'),
('Luka', 'Ilic', 'Aktuar'), ('Katarina', 'Stankovic', 'Doktor mikroekonomije'),
('Filip', 'Pavlovic', 'Specijalista za rizike'), ('Jovana', 'Ristic', 'Master inzenjer menadzmenta'),
('Nemanja', 'Kostic', 'Ekonomista'), ('Marija', 'Zivkovic', 'Doktor teorije igara'),
('Aleksandar', 'Savic', 'Menadzer portfolija'), ('Sanja', 'Lazarevic', 'Master finansija'),
('Dusan', 'Todorovic', 'Broker'), ('Ivana', 'Radovanovic', 'Doktor ekonomskih nauka'),
('Vuk', 'Milovanovic', 'Finansijski savetnik'), ('Teodora', 'Bogdanovic', 'Kvantitativni analiticar'),
('Igor', 'Vukovic', 'Makroekonomista'), ('Tamara', 'Krstic', 'Master ekonomije'),
('Vladimir', 'Marinkovic', 'Analiticar trzista'), ('Nevena', 'Jankovic', 'Doktor finansija'),
('Milos', 'Tasic', 'Broker za kriptovalute'), ('Maja', 'Simic', 'Specijalista za investicije'),
('Bojan', 'Tomasevic', 'Aktuar'), ('Dragana', 'Milic', 'Master teorije igara'),
('Darko', 'Mitic', 'Ekonomista'), ('Ksenija', 'Dinic', 'Doktor makroekonomije'),
('Milan', 'Lukic', 'Finansijski analiticar'), ('Sonja', 'Veselinovic', 'Master ekonomista'),
('Petar', 'Djukic', 'Menadzer rizika'), ('Andjela', 'Radic', 'Kvantitativni analiticar'),
('Ognjen', 'Grujic', 'Doktor mikroekonomije'), ('Tijana', 'Maksimovic', 'Berzanski broker'),
('Uros', 'Obradovic', 'Master finansija'), ('Sara', 'Knezevic', 'Analiticar trzista kapitala'),
('Ivan', 'Spasic', 'Doktor teorije igara'), ('Nina', 'Bogunovic', 'Master ekonomije'),
('Slobodan', 'Cvetkovic', 'Aktuar'), ('Danica', 'Trifunovic', 'Finansijski savetnik'),
('Dejan', 'Rakic', 'Makroekonomista'), ('Ljubica', 'Novakovic', 'Menadzer portfolija'),
('Radovan', 'Aleksic', 'Broker'), ('Milena', 'Jovic', 'Doktor ekonomskih nauka'),
('Nenad', 'Stevanovic', 'Specijalista za rizike'), ('Jana', 'Mihajlovic', 'Master finansija'),
('Goran', 'Radovanovic', 'Kvantitativni analiticar'), ('Marina', 'Stojanovic', 'Analiticar kriptovaluta'),
('Srdjan', 'Vukotic', 'Doktor mikroekonomije'), ('Nadja', 'Peric', 'Master ekonomista'),
('Bogdan', 'Kovacevic', 'Finansijski analiticar'), ('Anastasija', 'Pantic', 'Broker'),
('Relja', 'Cirkovic', 'Aktuar'), ('Sofija', 'Despotovic', 'Menadzer investicija'),
('Vojin', 'Todorovic', 'Doktor teorije igara'), ('Tara', 'Kostic', 'Master finansija'),
('Slavko', 'Bozic', 'Ekonomista'), ('Una', 'Rakic', 'Analiticar trzista'),
('Boris', 'Milanovic', 'Makroekonomista'), ('Dunja', 'Gajic', 'Doktor ekonomije'),
('Ilija', 'Antic', 'Kvantitativni analiticar'), ('Klara', 'Veljkovic', 'Master ekonomista'),
('Vukasin', 'Maric', 'Finansijski savetnik'), ('Lana', 'Vidakovic', 'Broker'),
('Djordje', 'Gligorijevic', 'Menadzer rizika'), ('Mila', 'Savkovic', 'Doktor finansija'),
('Oskar', 'Jovanovic', 'Aktuar'), ('Lena', 'Stancic', 'Specijalista za trziste kapitala'),
('Mateja', 'Radonjic', 'Master teorije igara'), ('Iskra', 'Tomic', 'Finansijski analiticar'),
('Vasilije', 'Nedeljkovic', 'Doktor mikroekonomije'), ('Hana', 'Djordjevic', 'Broker za sirovine'),
('Sava', 'Babic', 'Kvantitativni analiticar'), ('Ena', 'Cvetkovic', 'Master finansija'),
('Kosta', 'Ignjatovic', 'Ekonomista'), ('Mia', 'Vukadinovic', 'Menadzer portfolija'),
('Damjan', 'Zivanovic', 'Doktor makroekonomije'), ('Lea', 'Kruscic', 'Analiticar rizika'),
('Mihajlo', 'Katic', 'Master ekonomije'), ('Zoe', 'Pesic', 'Aktuar'),
('Strahinja', 'Lazic', 'Finansijski broker'), ('Neda', 'Mitrovic', 'Doktor teorije igara'),
('Viktor', 'Radic', 'Kvantitativni analiticar'), ('Senka', 'Radojevic', 'Master ekonomista'),
('Aleksej', 'Sokolovic', 'Specijalista za obveznice'), ('Ruza', 'Kovac', 'Analiticar trzista'),
('Tadej', 'Bojic', 'Doktor finansija'), ('Mina', 'Vujic', 'Master menadzmenta'),
('Lav', 'Perovic', 'Makroekonomista'), ('Lola', 'Filipovic', 'Finansijski savetnik'),
('Maksim', 'Gojkovic', 'Menadzer investicija'), ('Sasa', 'Vojinovic', 'Broker'),
('Vidak', 'Radulovic', 'Doktor ekonomskih nauka'), ('Dina', 'Stankovic', 'Kvantitativni analiticar'),
('Arsenije', 'Ninkovic', 'Aktuar'), ('Una', 'Obradovic', 'Master teorije igara'),
('Relja', 'Miljkovic', 'Analiticar kriptovaluta'), ('Tara', 'Djordjevic', 'Doktor mikroekonomije'),
('Vukan', 'Popovic', 'Ekonomista'), ('Iva', 'Markovic', 'Master finansija');

-- =======================================================
-- 2. PREOSTALIH 80 RESURSA (Sirovine, Akcije, Valute)
-- =======================================================
INSERT INTO Resurs (Naziv, Cena) VALUES
('Novac - GBP', 137), ('Novac - CHF', 120), ('Novac - JPY', 1), ('Novac - CAD', 80),
('Novac - AUD', 70), ('Kafa (Tona)', 320000), ('Kakao (Tona)', 410000), ('Pamuk (Tona)', 180000),
('Platina (Unca)', 95000), ('Paladijum (Unca)', 110000), ('Aluminijum (Tona)', 220000),
('Celik (Tona)', 85000), ('Zelezna ruda (Tona)', 12000), ('Ugalj (Tona)', 15000),
('Prirodni gas (MMBtu)', 300), ('Soja (Tona)', 45000), ('Svinjsko meso (Tona)', 160000),
('Govedina (Tona)', 450000), ('Mleko u prahu (Tona)', 310000), ('Pirinac (Tona)', 55000),
('Akcija Microsoft (MSFT)', 45000), ('Akcija Google (GOOGL)', 16000), ('Akcija Amazon (AMZN)', 19000),
('Akcija Meta (META)', 55000), ('Akcija Nvidia (NVDA)', 98000), ('Akcija Netflix (NFLX)', 67000),
('Akcija AMD (AMD)', 18000), ('Akcija Intel (INTC)', 4500), ('Akcija Coca-Cola (KO)', 6500),
('Akcija PepsiCo (PEP)', 18000), ('Akcija McDonald''s (MCD)', 31000), ('Akcija Nike (NKE)', 10500),
('Akcija Boeing (BA)', 21000), ('Akcija Pfizer (PFE)', 3000), ('Akcija Johnson&Johnson', 17000),
('Akcija Visa (V)', 29000), ('Akcija Mastercard (MA)', 48000), ('Akcija JPMorgan (JPM)', 21000),
('Kriptovaluta Ripple (XRP)', 60), ('Kriptovaluta Cardano (ADA)', 55), ('Kriptovaluta Solana (SOL)', 15000),
('Kriptovaluta Polkadot (DOT)', 800), ('Kriptovaluta Dogecoin (DOGE)', 15), ('Kriptovaluta Chainlink', 2000),
('Drzavna obveznica USA 10Y', 105000), ('Drzavna obveznica GER 10Y', 110000), ('Drzavna obveznica JPN 10Y', 90000),
('Korporativna obveznica Apple', 102000), ('Korporativna obveznica Tesla', 95000), ('Investicioni fond S&P 500', 55000),
('Investicioni fond NASDAQ', 42000), ('Nafta Brent (Barel)', 8600), ('Nafta WTI (Barel)', 8200),
('Uranijum (Funta)', 9500), ('Litijum (Tona)', 1450000), ('Kobalt (Tona)', 3200000),
('Drvo (m3)', 15000), ('Guma (Tona)', 185000), ('Bakarne cevi (Tona)', 980000),
('Zlato poluga (1kg)', 7500000), ('Srebro poluga (1kg)', 95000), ('Dijamant (Karat)', 550000),
('Informacija o kvartalnoj zaradi', 120000), ('Pravo na gradnju', 2500000), ('Licenca za softver', 85000),
('Autorsko pravo na knjigu', 150000), ('Patent za lek', 15000000), ('Koncesija za rudnik', 50000000),
('Radni sat - Menadzer', 5000), ('Radni sat - Advokat', 8000), ('Radni sat - Revizor', 6500),
('Radni sat - Konsultant', 7500), ('Osiguranje od bankrota', 250000), ('Osiguranje imovine', 45000),
('Ugovor o fjučersima - Zlato', 220000), ('Ugovor o fjučersima - Nafta', 8500), ('Opcija Call - Akcija MSFT', 1500),
('Opcija Put - Akcija Tesla', 2800), ('Kreditni rejting izvestaj', 15000), ('Trzisna analiza (PDF)', 5000);

-- =======================================================
-- 3. PREOSTALIH 80 EKSPERIMENATA (Ekonomske simulacije)
-- =======================================================
INSERT INTO Eksperiment (Naziv, ID_Tip) VALUES
('Uticaj inflacije na stednju', 1), ('Holandska aukcija lala', 2), ('Model idealnog trzista psenice', 3),
('Oligopol mobilnih operatera', 5), ('Aukcija druge cene (Vickrey)', 2), ('Cenovna elasticnost kafe', 1),
('Monopol drzavne zeleznice', 4), ('Efekat uvodjenja poreza na secer', 1), ('Konkurencija na trzistu pekara', 3),
('Zatvorenikova dilema - OGLASAVANJE', 5), ('Trgovina emisijama gasova', 1), ('Engleska aukcija polovnih automobila', 2),
('Monopolisticka konkurencija restorana', 3), ('Kartel izvoznika nafte (OPEC)', 5), ('Prirodni monopol vodovoda', 4),
('Trziste rada - efekat migracija', 1), ('Aukcija sa zatvorenim ponudama', 2), ('Subvencionisanje elektricnih vozila', 1),
('Konkurencija na trzistu kriptovaluta', 3), ('Igra kukavice (Chicken game) na trzistu', 5),
('Uticaj kamatne stope na investicije', 1), ('Prodaja frekvencija za radio stanice', 2),
('Savrsena konkurencija deviznog trzista', 3), ('Monopol farmaceutske kompanije', 4),
('Oligopol proizvodjaca procesora', 5), ('Efekat minimalne cene mleka', 1),
('Aukcija umetnina u Sotheby s', 2), ('Trziste poljoprivrednih proizvoda', 3),
('Monopol na trzistu dijamanata', 4), ('Rat cena avio kompanija', 5),
('Traznja za luksuznim dobrima', 1), ('Aukcija za drzavne obveznice', 2),
('Formiranje cene zlata na berzi', 3), ('Autorska prava kao monopol', 4),
('Oligopol proizvodjaca aviona', 5), ('Trziste nekretnina tokom krize', 1),
('Obrnuta aukcija za javne nabavke', 2), ('Trziste akcija bez asimetricnih inf.', 3),
('Monopol lokalnog distributera struje', 4), ('Oligopol supermarketa (Duopol)', 5),
('Potrosacka korpa i indeks cena', 1), ('Licitacija za stecajnu imovinu', 2),
('Trziste obveznica i prinosi', 3), ('Cenovna diskriminacija 1. stepena', 4),
('Kartelizacija gradjevinskih firmi', 5), ('Uticaj carine na uvoz automobila', 1),
('Japanska aukcija (silazna)', 2), ('Konkurencija u IT sektoru', 3),
('Cenovna diskriminacija 2. stepena', 4), ('Model vodje i pratioca (Stackelberg)', 5),
('Efekat supstitucije mesa i ribe', 1), ('Aukcija za prodaju zaplenjene robe', 2),
('Savrseno trziste sirovina', 3), ('Cenovna diskriminacija 3. stepena', 4),
('Kurnoov model oligopola', 5), ('Uticaj rasta plata na cene', 1),
('Aukcija po modelu peni-licitacije', 2), ('Trziste drvne gradje', 3),
('Patentna zastita softvera', 4), ('Bertranov model oligopola', 5),
('Trziste kredita i asimetricne info', 1), ('Aukcija domena na internetu', 2),
('Berza ugljenika', 3), ('Ekskluzivno pravo prenosa LŠ', 4),
('Oligopol trzista piva', 5), ('Traznja za osiguranjem', 1),
('Tiha aukcija u humanitarne svrhe', 2), ('Trziste nafte bez OPEC-a', 3),
('Monopolisticko preuzimanje (M&A)', 4), ('Tajni dogovori o cenama (Koluzija)', 5),
('Ponuda radne snage u IT', 1), ('Aukcija prve cene - antikviteti', 2),
('Formiranje cene bakra', 3), ('Prirodni monopol u prenosu gasa', 4),
('Duopol Coca-Cola i Pepsi', 5), ('Potrosacki visak pri rasprodaji', 1),
('Aukcija za koncesiju aerodroma', 2), ('Trziste hartija od vrednosti', 3),
('Licenca za kazino', 4), ('Oligopol bankarskog sektora', 5);

-- =======================================================
-- 4. ALATI (100 komada - Modeli, Softveri, Baza podataka)
-- =======================================================
-- Podsetnik: ID_Alat moramo redom (1 do 100), ID_Tip (1-5), ID_Laboratorija (1-5)
INSERT INTO Alat (ID_Alat, Datum_Nabavke, Datum_Proizvodnje, ID_Tip, ID_Laboratorija) VALUES
(1, '2021-01-15', '2020-11-01', 1, 3), (2, '2022-03-10', '2022-01-20', 2, 2),
(3, '2020-05-22', '2019-12-10', 3, 4), (4, '2023-08-11', '2023-06-05', 4, 2),
(5, '2021-09-30', '2021-08-15', 5, 5), (6, '2020-02-14', '2019-10-11', 1, 3),
(7, '2022-11-05', '2022-09-25', 2, 1), (8, '2021-06-18', '2021-04-10', 3, 4),
(9, '2023-01-20', '2022-12-05', 4, 2), (10, '2020-10-10', '2020-08-01', 5, 5),
(11, '2021-04-12', '2021-02-28', 1, 3), (12, '2022-07-25', '2022-06-10', 2, 1),
(13, '2020-08-19', '2020-05-15', 3, 4), (14, '2023-03-14', '2023-01-20', 4, 2),
(15, '2021-12-05', '2021-10-10', 5, 5), (16, '2020-01-08', '2019-11-15', 1, 3),
(17, '2022-09-17', '2022-08-01', 2, 1), (18, '2021-05-30', '2021-03-15', 3, 4),
(19, '2023-10-22', '2023-09-05', 4, 2), (20, '2020-11-11', '2020-10-01', 5, 5),
(21, '2021-07-14', '2021-06-01', 1, 3), (22, '2022-02-28', '2022-01-15', 2, 1),
(23, '2020-06-25', '2020-04-10', 3, 4), (24, '2023-05-19', '2023-04-05', 4, 2),
(25, '2021-08-08', '2021-07-01', 5, 5), (26, '2020-03-17', '2020-02-01', 1, 3),
(27, '2022-12-12', '2022-10-15', 2, 1), (28, '2021-10-05', '2021-08-20', 3, 4),
(29, '2023-02-14', '2022-12-25', 4, 2), (30, '2020-09-09', '2020-07-15', 5, 5),
(31, '2021-02-22', '2021-01-10', 1, 3), (32, '2022-05-18', '2022-04-01', 2, 1),
(33, '2020-12-01', '2020-10-10', 3, 4), (34, '2023-07-30', '2023-06-15', 4, 2),
(35, '2021-11-15', '2021-09-20', 5, 5), (36, '2020-04-10', '2020-03-01', 1, 3),
(37, '2022-08-25', '2022-07-10', 2, 1), (38, '2021-01-05', '2020-11-15', 3, 4),
(39, '2023-06-12', '2023-05-01', 4, 2), (40, '2020-07-20', '2020-06-05', 5, 5),
(41, '2021-03-15', '2021-02-01', 1, 3), (42, '2022-10-10', '2022-08-15', 2, 1),
(43, '2020-05-05', '2020-03-20', 3, 4), (44, '2023-09-18', '2023-08-01', 4, 2),
(45, '2021-06-25', '2021-05-10', 5, 5), (46, '2020-08-14', '2020-07-01', 1, 3),
(47, '2022-01-22', '2021-12-10', 2, 1), (48, '2021-09-10', '2021-08-01', 3, 4),
(49, '2023-04-28', '2023-03-15', 4, 2), (50, '2020-10-30', '2020-09-15', 5, 5),
(51, '2021-12-20', '2021-11-05', 1, 3), (52, '2022-04-15', '2022-03-01', 2, 1),
(53, '2020-02-28', '2020-01-15', 3, 4), (54, '2023-11-05', '2023-09-20', 4, 2),
(55, '2021-05-12', '2021-04-01', 5, 5), (56, '2020-11-25', '2020-10-10', 1, 3),
(57, '2022-06-08', '2022-05-01', 2, 1), (58, '2021-08-30', '2021-07-15', 3, 4),
(59, '2023-01-15', '2022-12-01', 4, 2), (60, '2020-06-10', '2020-05-01', 5, 5),
(61, '2021-02-18', '2021-01-05', 1, 3), (62, '2022-09-05', '2022-07-20', 2, 1),
(63, '2020-03-22', '2020-02-10', 3, 4), (64, '2023-08-25', '2023-07-10', 4, 2),
(65, '2021-11-10', '2021-10-01', 5, 5), (66, '2020-09-15', '2020-08-01', 1, 3),
(67, '2022-03-25', '2022-02-10', 2, 1), (68, '2021-07-05', '2021-05-20', 3, 4),
(69, '2023-12-10', '2023-11-01', 4, 2), (70, '2020-12-18', '2020-11-05', 5, 5),
(71, '2021-04-30', '2021-03-15', 1, 3), (72, '2022-11-20', '2022-10-05', 2, 1),
(73, '2020-01-25', '2019-12-10', 3, 4), (74, '2023-05-05', '2023-03-20', 4, 2),
(75, '2021-10-25', '2021-09-10', 5, 5), (76, '2020-07-12', '2020-06-01', 1, 3),
(77, '2022-02-15', '2022-01-01', 2, 1), (78, '2021-03-08', '2021-01-20', 3, 4),
(79, '2023-07-18', '2023-06-05', 4, 2), (80, '2020-05-20', '2020-04-05', 5, 5),
(81, '2021-09-15', '2021-08-01', 1, 3), (82, '2022-10-28', '2022-09-15', 2, 1),
(83, '2020-08-05', '2020-06-20', 3, 4), (84, '2023-02-22', '2023-01-10', 4, 2),
(85, '2021-12-15', '2021-11-01', 5, 5), (86, '2020-10-22', '2020-09-10', 1, 3),
(87, '2022-05-10', '2022-03-25', 2, 1), (88, '2021-01-30', '2020-12-15', 3, 4),
(89, '2023-09-05', '2023-07-20', 4, 2), (90, '2020-04-25', '2020-03-10', 5, 5),
(91, '2021-08-20', '2021-07-05', 1, 3), (92, '2022-12-05', '2022-10-20', 2, 1),
(93, '2020-11-08', '2020-09-25', 3, 4), (94, '2023-04-12', '2023-02-28', 4, 2),
(95, '2021-06-15', '2021-05-01', 5, 5), (96, '2020-02-05', '2019-12-20', 1, 3),
(97, '2022-07-12', '2022-06-01', 2, 1), (98, '2021-11-28', '2021-10-15', 3, 4),
(99, '2023-10-15', '2023-09-01', 4, 2), (100, '2020-06-30', '2020-05-15', 5, 5);

-- =======================================================
-- 1. Laboratorija_Resurs (Gde se nalazi kojih 100 resursa)
-- =======================================================
INSERT INTO Laboratorija_Resurs (ID_Laboratorija, ID_Resurs, Kolicina, Status) VALUES
(1, 1, 500000, 'Dostupno'), (2, 2, 10000, 'Dostupno'), (3, 3, 25000, 'U upotrebi'), (4, 4, 100, 'Dostupno'), (5, 5, 50, 'Rezervisano'),
(1, 6, 10, 'Dostupno'), (2, 7, 100, 'U upotrebi'), (3, 8, 5, 'Dostupno'), (4, 9, 200, 'Dostupno'), (5, 10, 150, 'U upotrebi'),
(1, 11, 500, 'Dostupno'), (2, 12, 10, 'Dostupno'), (3, 13, 25, 'Rezervisano'), (4, 14, 1000, 'Dostupno'), (5, 15, 800, 'U upotrebi'),
(1, 16, 200, 'Dostupno'), (2, 17, 500, 'Dostupno'), (3, 18, 100, 'Dostupno'), (4, 19, 5, 'U upotrebi'), (5, 20, 100, 'Rezervisano'),
(1, 21, 50, 'Dostupno'), (2, 22, 60, 'Dostupno'), (3, 23, 70, 'U upotrebi'), (4, 24, 80, 'Dostupno'), (5, 25, 90, 'Dostupno'),
(1, 26, 100, 'Dostupno'), (2, 27, 20, 'Rezervisano'), (3, 28, 30, 'Dostupno'), (4, 29, 40, 'U upotrebi'), (5, 30, 50, 'Dostupno'),
(1, 31, 60, 'Dostupno'), (2, 32, 70, 'Dostupno'), (3, 33, 80, 'U upotrebi'), (4, 34, 90, 'Dostupno'), (5, 35, 100, 'Rezervisano'),
(1, 36, 150, 'Dostupno'), (2, 37, 200, 'Dostupno'), (3, 38, 250, 'U upotrebi'), (4, 39, 300, 'Dostupno'), (5, 40, 350, 'Dostupno'),
(1, 41, 400, 'Dostupno'), (2, 42, 450, 'Rezervisano'), (3, 43, 500, 'Dostupno'), (4, 44, 550, 'U upotrebi'), (5, 45, 600, 'Dostupno'),
(1, 46, 10, 'Dostupno'), (2, 47, 15, 'Dostupno'), (3, 48, 20, 'U upotrebi'), (4, 49, 25, 'Dostupno'), (5, 50, 30, 'Rezervisano'),
(1, 51, 35, 'Dostupno'), (2, 52, 40, 'Dostupno'), (3, 53, 45, 'U upotrebi'), (4, 54, 50, 'Dostupno'), (5, 55, 55, 'Dostupno'),
(1, 56, 60, 'Dostupno'), (2, 57, 65, 'Rezervisano'), (3, 58, 70, 'Dostupno'), (4, 59, 75, 'U upotrebi'), (5, 60, 80, 'Dostupno'),
(1, 61, 85, 'Dostupno'), (2, 62, 90, 'Dostupno'), (3, 63, 95, 'U upotrebi'), (4, 64, 100, 'Dostupno'), (5, 65, 105, 'Rezervisano'),
(1, 66, 110, 'Dostupno'), (2, 67, 115, 'Dostupno'), (3, 68, 120, 'U upotrebi'), (4, 69, 125, 'Dostupno'), (5, 70, 130, 'Dostupno'),
(1, 71, 135, 'Dostupno'), (2, 72, 140, 'Rezervisano'), (3, 73, 145, 'Dostupno'), (4, 74, 150, 'U upotrebi'), (5, 75, 155, 'Dostupno'),
(1, 76, 160, 'Dostupno'), (2, 77, 165, 'Dostupno'), (3, 78, 170, 'U upotrebi'), (4, 79, 175, 'Dostupno'), (5, 80, 180, 'Rezervisano'),
(1, 81, 185, 'Dostupno'), (2, 82, 190, 'Dostupno'), (3, 83, 195, 'U upotrebi'), (4, 84, 200, 'Dostupno'), (5, 85, 205, 'Dostupno'),
(1, 86, 210, 'Dostupno'), (2, 87, 215, 'Rezervisano'), (3, 88, 220, 'Dostupno'), (4, 89, 225, 'U upotrebi'), (5, 90, 230, 'Dostupno'),
(1, 91, 235, 'Dostupno'), (2, 92, 240, 'Dostupno'), (3, 93, 245, 'U upotrebi'), (4, 94, 250, 'Dostupno'), (5, 95, 255, 'Rezervisano'),
(1, 96, 260, 'Dostupno'), (2, 97, 265, 'Dostupno'), (3, 98, 270, 'U upotrebi'), (4, 99, 275, 'Dostupno'), (5, 100, 280, 'Dostupno');

-- =======================================================
-- 2. Eksperiment_Dizajner (100 eksperimenata vezujemo za dizajnere i teoriju)
-- =======================================================
-- Format: (ID_Istrazivac, ID_Eksperiment, ID_Teorija)
INSERT INTO Eksperiment_Dizajner (ID_Istrazivac, ID_Eksperiment, ID_Teorija) VALUES
(1, 1, 2), (2, 2, 1), (3, 3, 1), (4, 4, 3), (5, 5, 4), (6, 6, 5), (7, 7, 2), (8, 8, 3), (9, 9, 4), (10, 10, 1),
(11, 11, 2), (12, 12, 5), (13, 13, 1), (14, 14, 3), (15, 15, 2), (16, 16, 4), (17, 17, 1), (18, 18, 5), (19, 19, 2), (20, 20, 3),
(21, 21, 4), (22, 22, 1), (23, 23, 5), (24, 24, 2), (25, 25, 3), (26, 26, 4), (27, 27, 1), (28, 28, 5), (29, 29, 2), (30, 30, 3),
(31, 31, 4), (32, 32, 1), (33, 33, 5), (34, 34, 2), (35, 35, 3), (36, 36, 4), (37, 37, 1), (38, 38, 5), (39, 39, 2), (40, 40, 3),
(41, 41, 4), (42, 42, 1), (43, 43, 5), (44, 44, 2), (45, 45, 3), (46, 46, 4), (47, 47, 1), (48, 48, 5), (49, 49, 2), (50, 50, 3),
(51, 51, 4), (52, 52, 1), (53, 53, 5), (54, 54, 2), (55, 55, 3), (56, 56, 4), (57, 57, 1), (58, 58, 5), (59, 59, 2), (60, 60, 3),
(61, 61, 4), (62, 62, 1), (63, 63, 5), (64, 64, 2), (65, 65, 3), (66, 66, 4), (67, 67, 1), (68, 68, 5), (69, 69, 2), (70, 70, 3),
(71, 71, 4), (72, 72, 1), (73, 73, 5), (74, 74, 2), (75, 75, 3), (76, 76, 4), (77, 77, 1), (78, 78, 5), (79, 79, 2), (80, 80, 3),
(81, 81, 4), (82, 82, 1), (83, 83, 5), (84, 84, 2), (85, 85, 3), (86, 86, 4), (87, 87, 1), (88, 88, 5), (89, 89, 2), (90, 90, 3),
(91, 91, 4), (92, 92, 1), (93, 93, 5), (94, 94, 2), (95, 95, 3), (96, 96, 4), (97, 97, 1), (98, 98, 5), (99, 99, 2), (100, 100, 3);

-- =======================================================
-- 3. Izvodjenje (100 zapisa kada su se eksperimenti izvodili)
-- =======================================================
-- Format: (Datum, Status, Cena, Kolicina, ID_Eksperiment, ID_Laboratorija)
INSERT INTO Izvodjenje (Datum, Status, Cena, Kolicina, ID_Eksperiment, ID_Laboratorija) VALUES
('2023-01-10', 'Zavrseno uspesno', 15000, 100, 1, 1), ('2023-01-15', 'Zavrseno uspesno', 12000, 50, 2, 2),
('2023-01-20', 'Planirano', 18000, 200, 3, 3), ('2023-02-05', 'Zavrseno neuspesno', 5000, 20, 4, 4),
('2023-02-12', 'Zapoceto', 25000, 300, 5, 5), ('2023-02-18', 'Otkazano', 0, 0, 6, 1),
('2023-03-01', 'Zavrseno uspesno', 45000, 500, 7, 2), ('2023-03-10', 'Zavrseno uspesno', 32000, 150, 8, 3),
('2023-03-22', 'Planirano', 11000, 80, 9, 4), ('2023-04-05', 'Zavrseno uspesno', 95000, 1000, 10, 5),
('2023-04-12', 'Zavrseno neuspesno', 8000, 10, 11, 1), ('2023-04-18', 'Zapoceto', 22000, 250, 12, 2),
('2023-05-02', 'Zavrseno uspesno', 14000, 120, 13, 3), ('2023-05-15', 'Zavrseno uspesno', 17500, 180, 14, 4),
('2023-05-28', 'Planirano', 21000, 220, 15, 5), ('2023-06-04', 'Zavrseno uspesno', 65000, 600, 16, 1),
('2023-06-11', 'Otkazano', 0, 0, 17, 2), ('2023-06-20', 'Zavrseno uspesno', 33000, 350, 18, 3),
('2023-07-05', 'Zapoceto', 19000, 190, 19, 4), ('2023-07-15', 'Zavrseno neuspesno', 7500, 40, 20, 5),
('2023-07-22', 'Zavrseno uspesno', 28000, 280, 21, 1), ('2023-08-01', 'Zavrseno uspesno', 41000, 420, 22, 2),
('2023-08-10', 'Planirano', 55000, 550, 23, 3), ('2023-08-18', 'Zavrseno uspesno', 16000, 160, 24, 4),
('2023-09-02', 'Zavrseno neuspesno', 9000, 90, 25, 5), ('2023-09-12', 'Zapoceto', 24000, 240, 26, 1),
('2023-09-25', 'Zavrseno uspesno', 38000, 380, 27, 2), ('2023-10-05', 'Otkazano', 0, 0, 28, 3),
('2023-10-15', 'Zavrseno uspesno', 47000, 470, 29, 4), ('2023-10-22', 'Planirano', 52000, 520, 30, 5),
('2023-11-01', 'Zavrseno uspesno', 13000, 130, 31, 1), ('2023-11-10', 'Zavrseno uspesno', 27000, 270, 32, 2),
('2023-11-20', 'Zavrseno neuspesno', 8500, 85, 33, 3), ('2023-12-05', 'Zapoceto', 31000, 310, 34, 4),
('2023-12-15', 'Zavrseno uspesno', 59000, 590, 35, 5), ('2024-01-08', 'Planirano', 62000, 620, 36, 1),
('2024-01-18', 'Zavrseno uspesno', 14500, 145, 37, 2), ('2024-02-02', 'Otkazano', 0, 0, 38, 3),
('2024-02-14', 'Zavrseno uspesno', 36000, 360, 39, 4), ('2024-02-25', 'Zavrseno uspesno', 43000, 430, 40, 5),
('2024-03-05', 'Zapoceto', 29000, 290, 41, 1), ('2024-03-15', 'Zavrseno neuspesno', 9500, 95, 42, 2),
('2024-03-25', 'Planirano', 51000, 510, 43, 3), ('2024-04-08', 'Zavrseno uspesno', 15500, 155, 44, 4),
('2024-04-18', 'Zavrseno uspesno', 26500, 265, 45, 5), ('2024-05-02', 'Otkazano', 0, 0, 46, 1),
('2024-05-12', 'Zavrseno uspesno', 39500, 395, 47, 2), ('2024-05-22', 'Zapoceto', 48500, 485, 48, 3),
('2024-06-05', 'Zavrseno neuspesno', 10500, 105, 49, 4), ('2024-06-15', 'Planirano', 61000, 610, 50, 5),
('2024-06-25', 'Zavrseno uspesno', 16500, 165, 51, 1), ('2024-07-08', 'Zavrseno uspesno', 27500, 275, 52, 2),
('2024-07-18', 'Otkazano', 0, 0, 53, 3), ('2024-08-02', 'Zavrseno uspesno', 34500, 345, 54, 4),
('2024-08-12', 'Zapoceto', 45500, 455, 55, 5), ('2024-08-22', 'Zavrseno neuspesno', 11500, 115, 56, 1),
('2024-09-05', 'Planirano', 53000, 530, 57, 2), ('2024-09-15', 'Zavrseno uspesno', 17500, 175, 58, 3),
('2024-09-25', 'Zavrseno uspesno', 28500, 285, 59, 4), ('2024-10-08', 'Otkazano', 0, 0, 60, 5),
('2024-10-18', 'Zavrseno uspesno', 37500, 375, 61, 1), ('2024-11-02', 'Zapoceto', 49500, 495, 62, 2),
('2024-11-12', 'Zavrseno neuspesno', 12500, 125, 63, 3), ('2024-11-22', 'Planirano', 64000, 640, 64, 4),
('2024-12-05', 'Zavrseno uspesno', 18500, 185, 65, 5), ('2024-12-15', 'Zavrseno uspesno', 29500, 295, 66, 1),
('2024-12-25', 'Otkazano', 0, 0, 67, 2), ('2025-01-08', 'Zavrseno uspesno', 35500, 355, 68, 3),
('2025-01-18', 'Zapoceto', 42500, 425, 69, 4), ('2025-02-02', 'Zavrseno neuspesno', 13500, 135, 70, 5),
('2025-02-12', 'Planirano', 56000, 560, 71, 1), ('2025-02-22', 'Zavrseno uspesno', 19500, 195, 72, 2),
('2025-03-05', 'Zavrseno uspesno', 30500, 305, 73, 3), ('2025-03-15', 'Otkazano', 0, 0, 74, 4),
('2025-03-25', 'Zavrseno uspesno', 38500, 385, 75, 5), ('2025-04-08', 'Zapoceto', 46500, 465, 76, 1),
('2025-04-18', 'Zavrseno neuspesno', 14500, 145, 77, 2), ('2025-05-02', 'Planirano', 67000, 670, 78, 3),
('2025-05-12', 'Zavrseno uspesno', 20500, 205, 79, 4), ('2025-05-22', 'Zavrseno uspesno', 31500, 315, 80, 5),
('2025-06-05', 'Otkazano', 0, 0, 81, 1), ('2025-06-15', 'Zavrseno uspesno', 39500, 395, 82, 2),
('2025-06-25', 'Zapoceto', 47500, 475, 83, 3), ('2025-07-08', 'Zavrseno neuspesno', 15500, 155, 84, 4),
('2025-07-18', 'Planirano', 58000, 580, 85, 5), ('2025-08-02', 'Zavrseno uspesno', 21500, 215, 86, 1),
('2025-08-12', 'Zavrseno uspesno', 32500, 325, 87, 2), ('2025-08-22', 'Otkazano', 0, 0, 88, 3),
('2025-09-05', 'Zavrseno uspesno', 40500, 405, 89, 4), ('2025-09-15', 'Zapoceto', 50500, 505, 90, 5),
('2025-09-25', 'Zavrseno neuspesno', 16500, 165, 91, 1), ('2025-10-08', 'Planirano', 69000, 690, 92, 2),
('2025-10-18', 'Zavrseno uspesno', 22500, 225, 93, 3), ('2025-11-02', 'Zavrseno uspesno', 33500, 335, 94, 4),
('2025-11-12', 'Otkazano', 0, 0, 95, 5), ('2025-11-22', 'Zavrseno uspesno', 41500, 415, 96, 1),
('2025-12-05', 'Zapoceto', 51500, 515, 97, 2), ('2025-12-15', 'Zavrseno neuspesno', 17500, 175, 98, 3),
('2025-12-25', 'Planirano', 72000, 720, 99, 4), ('2026-01-05', 'Zavrseno uspesno', 23500, 235, 100, 5);

-- =======================================================
-- 1. Izvodjenje_Izvodjac (Koji istraživač je izvodio koje izvođenje)
-- =======================================================
INSERT INTO Izvodjenje_Izvodjac (ID_Istrazivac, ID_Izvodjenje) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
(41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
(51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (56, 56), (57, 57), (58, 58), (59, 59), (60, 60),
(61, 61), (62, 62), (63, 63), (64, 64), (65, 65), (66, 66), (67, 67), (68, 68), (69, 69), (70, 70),
(71, 71), (72, 72), (73, 73), (74, 74), (75, 75), (76, 76), (77, 77), (78, 78), (79, 79), (80, 80),
(81, 81), (82, 82), (83, 83), (84, 84), (85, 85), (86, 86), (87, 87), (88, 88), (89, 89), (90, 90),
(91, 91), (92, 92), (93, 93), (94, 94), (95, 95), (96, 96), (97, 97), (98, 98), (99, 99), (100, 100);

-- =======================================================
-- 2. Sesija (100 sesija koje se vezuju za izvođenja)
-- =======================================================
INSERT INTO Sesija (Datum, Vreme_Pocetka, Vreme_Zavrsetka, Model_Simulacije, ID_Izvodjenje) VALUES
('2024-01-10', '09:00', '11:00', 'Osn. model trzista', 1), ('2024-01-11', '10:00', '12:30', 'Osn. model trzista', 2),
('2024-01-12', '13:00', '15:00', 'Model rasta', 3), ('2024-01-13', '08:30', '10:45', 'Model pada', 4),
('2024-01-14', '11:15', '14:00', 'Linearni model', 5), ('2024-01-15', '14:30', '16:00', 'Nelinearni model', 6),
('2024-01-16', '09:00', '12:00', 'Staticki model', 7), ('2024-01-17', '10:00', '11:30', 'Dinamicki model', 8),
('2024-01-18', '12:00', '14:30', 'Stohasticki model', 9), ('2024-01-19', '15:00', '17:00', 'Deterministicki model', 10),
('2024-01-20', '09:00', '11:00', 'Osn. model trzista', 11), ('2024-01-21', '10:00', '12:30', 'Osn. model trzista', 12),
('2024-01-22', '13:00', '15:00', 'Model rasta', 13), ('2024-01-23', '08:30', '10:45', 'Model pada', 14),
('2024-01-24', '11:15', '14:00', 'Linearni model', 15), ('2024-01-25', '14:30', '16:00', 'Nelinearni model', 16),
('2024-01-26', '09:00', '12:00', 'Staticki model', 17), ('2024-01-27', '10:00', '11:30', 'Dinamicki model', 18),
('2024-01-28', '12:00', '14:30', 'Stohasticki model', 19), ('2024-01-29', '15:00', '17:00', 'Deterministicki model', 20),
('2024-02-01', '09:00', '11:00', 'Osn. model trzista', 21), ('2024-02-02', '10:00', '12:30', 'Osn. model trzista', 22),
('2024-02-03', '13:00', '15:00', 'Model rasta', 23), ('2024-02-04', '08:30', '10:45', 'Model pada', 24),
('2024-02-05', '11:15', '14:00', 'Linearni model', 25), ('2024-02-06', '14:30', '16:00', 'Nelinearni model', 26),
('2024-02-07', '09:00', '12:00', 'Staticki model', 27), ('2024-02-08', '10:00', '11:30', 'Dinamicki model', 28),
('2024-02-09', '12:00', '14:30', 'Stohasticki model', 29), ('2024-02-10', '15:00', '17:00', 'Deterministicki model', 30),
('2024-02-11', '09:00', '11:00', 'Osn. model trzista', 31), ('2024-02-12', '10:00', '12:30', 'Osn. model trzista', 32),
('2024-02-13', '13:00', '15:00', 'Model rasta', 33), ('2024-02-14', '08:30', '10:45', 'Model pada', 34),
('2024-02-15', '11:15', '14:00', 'Linearni model', 35), ('2024-02-16', '14:30', '16:00', 'Nelinearni model', 36),
('2024-02-17', '09:00', '12:00', 'Staticki model', 37), ('2024-02-18', '10:00', '11:30', 'Dinamicki model', 38),
('2024-02-19', '12:00', '14:30', 'Stohasticki model', 39), ('2024-02-20', '15:00', '17:00', 'Deterministicki model', 40),
('2024-03-01', '09:00', '11:00', 'Osn. model trzista', 41), ('2024-03-02', '10:00', '12:30', 'Osn. model trzista', 42),
('2024-03-03', '13:00', '15:00', 'Model rasta', 43), ('2024-03-04', '08:30', '10:45', 'Model pada', 44),
('2024-03-05', '11:15', '14:00', 'Linearni model', 45), ('2024-03-06', '14:30', '16:00', 'Nelinearni model', 46),
('2024-03-07', '09:00', '12:00', 'Staticki model', 47), ('2024-03-08', '10:00', '11:30', 'Dinamicki model', 48),
('2024-03-09', '12:00', '14:30', 'Stohasticki model', 49), ('2024-03-10', '15:00', '17:00', 'Deterministicki model', 50),
('2024-03-11', '09:00', '11:00', 'Osn. model trzista', 51), ('2024-03-12', '10:00', '12:30', 'Osn. model trzista', 52),
('2024-03-13', '13:00', '15:00', 'Model rasta', 53), ('2024-03-14', '08:30', '10:45', 'Model pada', 54),
('2024-03-15', '11:15', '14:00', 'Linearni model', 55), ('2024-03-16', '14:30', '16:00', 'Nelinearni model', 56),
('2024-03-17', '09:00', '12:00', 'Staticki model', 57), ('2024-03-18', '10:00', '11:30', 'Dinamicki model', 58),
('2024-03-19', '12:00', '14:30', 'Stohasticki model', 59), ('2024-03-20', '15:00', '17:00', 'Deterministicki model', 60),
('2024-04-01', '09:00', '11:00', 'Osn. model trzista', 61), ('2024-04-02', '10:00', '12:30', 'Osn. model trzista', 62),
('2024-04-03', '13:00', '15:00', 'Model rasta', 63), ('2024-04-04', '08:30', '10:45', 'Model pada', 64),
('2024-04-05', '11:15', '14:00', 'Linearni model', 65), ('2024-04-06', '14:30', '16:00', 'Nelinearni model', 66),
('2024-04-07', '09:00', '12:00', 'Staticki model', 67), ('2024-04-08', '10:00', '11:30', 'Dinamicki model', 68),
('2024-04-09', '12:00', '14:30', 'Stohasticki model', 69), ('2024-04-10', '15:00', '17:00', 'Deterministicki model', 70),
('2024-04-11', '09:00', '11:00', 'Osn. model trzista', 71), ('2024-04-12', '10:00', '12:30', 'Osn. model trzista', 72),
('2024-04-13', '13:00', '15:00', 'Model rasta', 73), ('2024-04-14', '08:30', '10:45', 'Model pada', 74),
('2024-04-15', '11:15', '14:00', 'Linearni model', 75), ('2024-04-16', '14:30', '16:00', 'Nelinearni model', 76),
('2024-04-17', '09:00', '12:00', 'Staticki model', 77), ('2024-04-18', '10:00', '11:30', 'Dinamicki model', 78),
('2024-04-19', '12:00', '14:30', 'Stohasticki model', 79), ('2024-04-20', '15:00', '17:00', 'Deterministicki model', 80),
('2024-05-01', '09:00', '11:00', 'Osn. model trzista', 81), ('2024-05-02', '10:00', '12:30', 'Osn. model trzista', 82),
('2024-05-03', '13:00', '15:00', 'Model rasta', 83), ('2024-05-04', '08:30', '10:45', 'Model pada', 84),
('2024-05-05', '11:15', '14:00', 'Linearni model', 85), ('2024-05-06', '14:30', '16:00', 'Nelinearni model', 86),
('2024-05-07', '09:00', '12:00', 'Staticki model', 87), ('2024-05-08', '10:00', '11:30', 'Dinamicki model', 88),
('2024-05-09', '12:00', '14:30', 'Stohasticki model', 89), ('2024-05-10', '15:00', '17:00', 'Deterministicki model', 90),
('2024-05-11', '09:00', '11:00', 'Osn. model trzista', 91), ('2024-05-12', '10:00', '12:30', 'Osn. model trzista', 92),
('2024-05-13', '13:00', '15:00', 'Model rasta', 93), ('2024-05-14', '08:30', '10:45', 'Model pada', 94),
('2024-05-15', '11:15', '14:00', 'Linearni model', 95), ('2024-05-16', '14:30', '16:00', 'Nelinearni model', 96),
('2024-05-17', '09:00', '12:00', 'Staticki model', 97), ('2024-05-18', '10:00', '11:30', 'Dinamicki model', 98),
('2024-05-19', '12:00', '14:30', 'Stohasticki model', 99), ('2024-05-20', '15:00', '17:00', 'Deterministicki model', 100);

-- =======================================================
-- 3. Sesija_Alat (Koji alat je korišćen u kojoj sesiji)
-- =======================================================
INSERT INTO Sesija_Alat (Sesija_ID_Sesija, Alat_ID_Alat) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
(41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
(51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (56, 56), (57, 57), (58, 58), (59, 59), (60, 60),
(61, 61), (62, 62), (63, 63), (64, 64), (65, 65), (66, 66), (67, 67), (68, 68), (69, 69), (70, 70),
(71, 71), (72, 72), (73, 73), (74, 74), (75, 75), (76, 76), (77, 77), (78, 78), (79, 79), (80, 80),
(81, 81), (82, 82), (83, 83), (84, 84), (85, 85), (86, 86), (87, 87), (88, 88), (89, 89), (90, 90),
(91, 91), (92, 92), (93, 93), (94, 94), (95, 95), (96, 96), (97, 97), (98, 98), (99, 99), (100, 100);

-- =======================================================
-- 4. Sesija_Resurs (Koji resurs je korišćen u kojoj sesiji i koliko)
-- =======================================================
INSERT INTO Sesija_Resurs (ID_Sesija, ID_Resurs, Iskoriscena_Kolicina) VALUES
(1, 1, 50), (2, 2, 100), (3, 3, 20), (4, 4, 5), (5, 5, 200), (6, 6, 15), (7, 7, 30), (8, 8, 40), (9, 9, 10), (10, 10, 25),
(11, 11, 50), (12, 12, 100), (13, 13, 20), (14, 14, 5), (15, 15, 200), (16, 16, 15), (17, 17, 30), (18, 18, 40), (19, 19, 10), (20, 20, 25),
(21, 21, 50), (22, 22, 100), (23, 23, 20), (24, 24, 5), (25, 25, 200), (26, 26, 15), (27, 27, 30), (28, 28, 40), (29, 29, 10), (30, 30, 25),
(31, 31, 50), (32, 32, 100), (33, 33, 20), (34, 34, 5), (35, 35, 200), (36, 36, 15), (37, 37, 30), (38, 38, 40), (39, 39, 10), (40, 40, 25),
(41, 41, 50), (42, 42, 100), (43, 43, 20), (44, 44, 5), (45, 45, 200), (46, 46, 15), (47, 47, 30), (48, 48, 40), (49, 49, 10), (50, 50, 25),
(51, 51, 50), (52, 52, 100), (53, 53, 20), (54, 54, 5), (55, 55, 200), (56, 56, 15), (57, 57, 30), (58, 58, 40), (59, 59, 10), (60, 60, 25),
(61, 61, 50), (62, 62, 100), (63, 63, 20), (64, 64, 5), (65, 65, 200), (66, 66, 15), (67, 67, 30), (68, 68, 40), (69, 69, 10), (70, 70, 25),
(71, 71, 50), (72, 72, 100), (73, 73, 20), (74, 74, 5), (75, 75, 200), (76, 76, 15), (77, 77, 30), (78, 78, 40), (79, 79, 10), (80, 80, 25),
(81, 81, 50), (82, 82, 100), (83, 83, 20), (84, 84, 5), (85, 85, 200), (86, 86, 15), (87, 87, 30), (88, 88, 40), (89, 89, 10), (90, 90, 25),
(91, 91, 50), (92, 92, 100), (93, 93, 20), (94, 94, 5), (95, 95, 200), (96, 96, 15), (97, 97, 30), (98, 98, 40), (99, 99, 10), (100, 100, 25);

-- =======================================================
-- 5. Eksperiment_zahteva_Resurs (Koji eksperiment zahteva koji resurs)
-- =======================================================
INSERT INTO Eksperiment_zahteva_Resurs (ID_Eksperiment, ID_Resurs, Kolicina) VALUES
(1, 1, 1000), (2, 2, 500), (3, 3, 250), (4, 4, 10), (5, 5, 800), (6, 6, 20), (7, 7, 50), (8, 8, 100), (9, 9, 30), (10, 10, 45),
(11, 11, 1000), (12, 12, 500), (13, 13, 250), (14, 14, 10), (15, 15, 800), (16, 16, 20), (17, 17, 50), (18, 18, 100), (19, 19, 30), (20, 20, 45),
(21, 21, 1000), (22, 22, 500), (23, 23, 250), (24, 24, 10), (25, 25, 800), (26, 26, 20), (27, 27, 50), (28, 28, 100), (29, 29, 30), (30, 30, 45),
(31, 31, 1000), (32, 32, 500), (33, 33, 250), (34, 34, 10), (35, 35, 800), (36, 36, 20), (37, 37, 50), (38, 38, 100), (39, 39, 30), (40, 40, 45),
(41, 41, 1000), (42, 42, 500), (43, 43, 250), (44, 44, 10), (45, 45, 800), (46, 46, 20), (47, 47, 50), (48, 48, 100), (49, 49, 30), (50, 50, 45),
(51, 51, 1000), (52, 52, 500), (53, 53, 250), (54, 54, 10), (55, 55, 800), (56, 56, 20), (57, 57, 50), (58, 58, 100), (59, 59, 30), (60, 60, 45),
(61, 61, 1000), (62, 62, 500), (63, 63, 250), (64, 64, 10), (65, 65, 800), (66, 66, 20), (67, 67, 50), (68, 68, 100), (69, 69, 30), (70, 70, 45),
(71, 71, 1000), (72, 72, 500), (73, 73, 250), (74, 74, 10), (75, 75, 800), (76, 76, 20), (77, 77, 50), (78, 78, 100), (79, 79, 30), (80, 80, 45),
(81, 81, 1000), (82, 82, 500), (83, 83, 250), (84, 84, 10), (85, 85, 800), (86, 86, 20), (87, 87, 50), (88, 88, 100), (89, 89, 30), (90, 90, 45),
(91, 91, 1000), (92, 92, 500), (93, 93, 250), (94, 94, 10), (95, 95, 800), (96, 96, 20), (97, 97, 50), (98, 98, 100), (99, 99, 30), (100, 100, 45);

-- =======================================================
-- 6. Eksperiment_has_Tip_Alat (Koji eksperiment zahteva koji Tip Alata)
-- =======================================================
-- ID_Tip_Alat ide od 1 do 5
INSERT INTO Eksperiment_has_Tip_Alat (ID_Eksperiment, ID_Tip_Alat) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 1), (7, 2), (8, 3), (9, 4), (10, 5),
(11, 1), (12, 2), (13, 3), (14, 4), (15, 5), (16, 1), (17, 2), (18, 3), (19, 4), (20, 5),
(21, 1), (22, 2), (23, 3), (24, 4), (25, 5), (26, 1), (27, 2), (28, 3), (29, 4), (30, 5),
(31, 1), (32, 2), (33, 3), (34, 4), (35, 5), (36, 1), (37, 2), (38, 3), (39, 4), (40, 5),
(41, 1), (42, 2), (43, 3), (44, 4), (45, 5), (46, 1), (47, 2), (48, 3), (49, 4), (50, 5),
(51, 1), (52, 2), (53, 3), (54, 4), (55, 5), (56, 1), (57, 2), (58, 3), (59, 4), (60, 5),
(61, 1), (62, 2), (63, 3), (64, 4), (65, 5), (66, 1), (67, 2), (68, 3), (69, 4), (70, 5),
(71, 1), (72, 2), (73, 3), (74, 4), (75, 5), (76, 1), (77, 2), (78, 3), (79, 4), (80, 5),
(81, 1), (82, 2), (83, 3), (84, 4), (85, 5), (86, 1), (87, 2), (88, 3), (89, 4), (90, 5),
(91, 1), (92, 2), (93, 3), (94, 4), (95, 5), (96, 1), (97, 2), (98, 3), (99, 4), (100, 5);

-- =========================================================================
-- 1. POGLED (VIEW)
-- Objašnjenje: Ovaj pogled prikazuje statistiku za svaki tip eksperimenta 
-- (ukupan broj izvođenja, ukupna cena i prosečna količina uložena), 
-- ali prikazuje samo one tipove koji imaju više od 5 izvođenja ukupno.
-- =========================================================================
CREATE VIEW v_statistika_tipova AS
SELECT 
    te.Naziv AS Tip_Eksperimenta,
    COUNT(i.ID_Izvodjenje) AS Broj_Izvodjenja,
    SUM(i.Cena) AS Ukupna_Cena_Izvodjenja,
    AVG(i.Kolicina) AS Prosecna_Kolicina_Resursa
FROM Tip_Eksperiment te
JOIN Eksperiment e ON te.ID_Tip = e.ID_Tip
JOIN Izvodjenje i ON e.ID_Eksperiment = i.ID_Eksperiment
GROUP BY te.ID_Tip, te.Naziv
HAVING COUNT(i.ID_Izvodjenje) > 5;


-- Promena delimitera za kreiranje funkcija i procedura
DELIMITER $$

-- =========================================================================
-- 2. FUNKCIJA
-- Objašnjenje: Funkcija prima cenu izvođenja eksperimenta (INT) i na osnovu
-- nje vraća tekstualnu kategoriju troškova: 'Visoka', 'Srednja' ili 'Niska'.
-- =========================================================================
CREATE FUNCTION f_kategorija_cene(cena INT) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE kategorija VARCHAR(20);
    IF cena >= 50000 THEN SET kategorija = 'Visoka';
    ELSEIF cena >= 20000 THEN SET kategorija = 'Srednja';
    ELSE SET kategorija = 'Niska';
    END IF;
    RETURN kategorija;
END $$


-- =========================================================================
-- 3. FUNKCIJA ZA TESTIRANJE
-- Objašnjenje: Testira funkciju f_kategorija_cene sa 5 različitih iznosa. 
-- Ako svi vrate tačno ono što se očekuje, vraća TRUE (1), u suprotnom FALSE (0).
-- =========================================================================
CREATE FUNCTION f_test_kategorija_cene() 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE rezultat BOOLEAN DEFAULT TRUE;
    
    -- Slučaj 1 (Visoka, tačno 50000)
    IF f_kategorija_cene(50000) != 'Visoka' THEN SET rezultat = FALSE; END IF;
    -- Slučaj 2 (Visoka, preko 50000)
    IF f_kategorija_cene(75000) != 'Visoka' THEN SET rezultat = FALSE; END IF;
    -- Slučaj 3 (Srednja)
    IF f_kategorija_cene(30000) != 'Srednja' THEN SET rezultat = FALSE; END IF;
    -- Slučaj 4 (Niska, ispod 20000)
    IF f_kategorija_cene(15000) != 'Niska' THEN SET rezultat = FALSE; END IF;
    -- Slučaj 5 (Niska, nula ili negativno u slučaju greške)
    IF f_kategorija_cene(0) != 'Niska' THEN SET rezultat = FALSE; END IF;
    
    RETURN rezultat;
END $$


-- =========================================================================
-- 4. PROCEDURA SA TRANSAKCIJOM
-- Objašnjenje: Simulira evidentiranje utroška resursa tokom sesije.
-- Prvo čita (SELECT) da li ima dovoljno resursa. Ako ima, smanjuje stanje u 
-- Laboratoriji (UPDATE) i beleži utrošak u veznu tabelu Sesija_Resurs (INSERT).
-- Ako nema dovoljno resursa, transakcija se poništava (ROLLBACK).
-- =========================================================================
CREATE PROCEDURE p_evidentiraj_utrosak(
    IN p_id_lab INT, 
    IN p_id_resurs INT, 
    IN p_id_sesija INT, 
    IN p_kolicina_za_trosenje INT
)
BEGIN
    -- Deklaracija promenljive za čuvanje trenutnog stanja
    DECLARE v_dostupno INT DEFAULT 0;
    
    -- Deklaracija hendlera u slučaju greške (zaustavlja i vraća unazad)
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    -- Prva operacija: SELECT
    SELECT Kolicina INTO v_dostupno 
    FROM Laboratorija_Resurs 
    WHERE ID_Laboratorija = p_id_lab AND ID_Resurs = p_id_resurs;
    
    -- Provera logike
    IF v_dostupno >= p_kolicina_za_trosenje THEN
        UPDATE Laboratorija_Resurs 
        SET Kolicina = Kolicina - p_kolicina_za_trosenje 
        WHERE ID_Laboratorija = p_id_lab AND ID_Resurs = p_id_resurs;
        
        INSERT IGNORE INTO Sesija_Resurs (ID_Sesija, ID_Resurs, Iskoriscena_Kolicina) 
        VALUES (p_id_sesija, p_id_resurs, p_kolicina_za_trosenje);
        
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
    
END $$

DELIMITER ;