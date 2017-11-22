insert into autorzy values (1,'Jane','Austen');
insert into autorzy values (2,'Charlotte','Bronte');
insert into autorzy values (3,'Janusz A.','Zajdel');
insert into autorzy values (4,'Elzbieta','Kalwasinska');
insert into autorzy values (5,'Danuta','Maciejewska');
insert into autorzy values (6, 'Juliusz','Verne');

insert into kategoria values (1, 'romans');
insert into kategoria values (2, 'fantasy');
insert into kategoria values (3, 'przygodowe');
insert into kategoria values (4, 'naukowe');

insert into wydawnictwo values (1, 'Świat Ksiązki', 'Adres');
insert into wydawnictwo values (2, 'Prószyński i SK-A', 'Adres2');
insert into wydawnictwo values (3, 'Wydawnictwo Naukowe Wydziału Zarządzania UW', 'Adres3');
insert into wydawnictwo values (4, 'kolekcja Hachette', 'Adres3');

insert into ksiazki values (1, 1, 'Perswazje', 1, '2000', '1234567890123', 'krótki opis');
insert into ksiazki values (2, 1, 'Dziwne losy Jane Eyre', 2, '2013', '1234567890456', 'krótki opis2');
insert into ksiazki values (3, 4, 'Rachunkowość finansowa w teorii i praktyce', 3, '2010', '1234567890789', 'krótki opis3');
insert into ksiazki values (4, 3, 'Podróż do wnętrza ziemi', 4, '1998', '1234567891235', 'krótki opis4');
insert into ksiazki values (5, 2, 'Cylinder van Troffa', 2, '1998', '1234589891235', 'krótki opis5');
insert into ksiazki values (6, 2, 'Wyjście z cienia', 2, '1996', '1234589891235', 'krótki opis6');
insert into ksiazki values (7, 1, 'Perswazje', 1, '2000', '1234569999123', 'krótki opis');
insert into ksiazki values (8, 1, 'Dziwne losy Jane Eyre', 2, '2013', '1777767890456', 'krótki opis2');
insert into ksiazki values (9, 4, 'Rachunkowość finansowa w teorii i praktyce', 3, '2010', '1666667890789', 'krótki opis3');
insert into ksiazki values (10, 3, 'Podróż do wnętrza ziemi', 4, '1998', '1234189791235', 'krótki opis4');
insert into ksiazki values (11, 2, 'Cylinder van Troffa', 2, '1998', '1218745891235', 'krótki opis5');
insert into ksiazki values (12, 2, 'Wyjście z cienia', 2, '1996', '1234581879235', 'krótki opis6');
insert into ksiazki values (13, 2, 'Wyjście z cienia', 2, '1996', '4564581879235', 'krótki opis6');
insert into ksiazki values (14, 2, 'Wyjście z cienia', 2, '1996', '7894581879235', 'krótki opis6');

insert into ksiazki_autorzy values(1,1);
insert into ksiazki_autorzy values(2,2);
insert into ksiazki_autorzy values(3,4);
insert into ksiazki_autorzy values(3,5);
insert into ksiazki_autorzy values(4,6);
insert into ksiazki_autorzy values(5,3);
insert into ksiazki_autorzy values(6,3);
insert into ksiazki_autorzy values(7,1);
insert into ksiazki_autorzy values(8,2);
insert into ksiazki_autorzy values(9,4);
insert into ksiazki_autorzy values(9,5);
insert into ksiazki_autorzy values(10,6);
insert into ksiazki_autorzy values(11,3);
insert into ksiazki_autorzy values(12,3);

insert into klienci values (1, 'Jan', 'Kowalski', 'Warszawa', '00-139', 'ul. Orla 5 m. 6', 'j.kowalski@op.pl', '639859741');
insert into klienci values (2, 'Janina', 'Nowak', 'Warszawa', '02-139', 'ul. Niska 7 m. 61', 'j.nowak@o2.pl', '639187741');
insert into klienci values (3, 'Agnieszka', 'Malinowska', 'Kraków', '05-119', 'ul. Słoneczna 7', 'aga123@op.pl', '618559741');
insert into klienci values (4, 'Krzysztof', 'Zawadzki', 'Warszawa', '04-189', 'ul. Mazowiecka 11 m.15', 'krzyszawa@op.pl', '669759741');
insert into klienci values (5, 'Mikołaj', 'Śliwa', 'Warszawa', '02-189', 'ul. Nowowiejska 11 m.15', 'm.slia@wp.pl', null);

insert into czytelnik values (1, 1, 'j.kowalski@op.pl', 'haslo1');
insert into czytelnik values (2, 2, 'j.nowak@o2.pl', 'haslo2');
insert into czytelnik values (3, 3, 'aga123@op.pl', 'haslo3');
insert into czytelnik values (4, 4, 'krzyszawa@op.pl', 'haslo4');
insert into czytelnik values (5, 5, 'm.slia@wp.pl', 'haslo5');

insert into bibliotekarz values (1, 'bibliotekarz', 'bibliotekarz1');

insert into zamowienia values(1, 2, '2017.10.12', '2017.10.15', '2017.11.15', '2017.11.15', 'zrealizowane');
insert into zamowienia (id_z, id_klienta, data_zamowienia, status) values(2,3, '2017.11.12', 'do odbioru');
insert into zamowienia values(3,4, '2017.10.15', '2017.10.17', '2017.11.17', '2017.11.19','upłynął termin zwrotu');
insert into zamowienia values(4, 1, '2017.09.12', '2017.09.20', '2017.10.20', null, 'upłynął termin zwrotu');
insert into zamowienia values(5,2, '2017.10.12', '2017.10.25', '2017.11.25', null, 'odebrano');
insert into zamowienia (id_z, id_klienta, data_zamowienia, status) values(6, 3, '2017.11.12', 'do odbioru');
insert into zamowienia values(7,4, '2017.11.15', '2017.12.15', null, null ,'odebrano');
insert into zamowienia values(8,1, '2017.11.12', '2017.12.12', null, null, 'odebrano');

insert into kary values (1, 3,
 (select id_klienta from zamowienia where id_z =3),
 (((extract(day from (select data_zwrotu from zamowienia where id_z = 3))) - (extract(day from (select termin_zwrotu from zamowienia where id_z = 3))))*0.5));

insert into zamowienia_ksiazki values(1, 1);
insert into zamowienia_ksiazki values(1, 2);
insert into zamowienia_ksiazki values(2, 3);
insert into zamowienia_ksiazki values(3, 4);
insert into zamowienia_ksiazki values(4, 5);
insert into zamowienia_ksiazki values(5, 12);
insert into zamowienia_ksiazki values(5, 11);
insert into zamowienia_ksiazki values(5, 10);
insert into zamowienia_ksiazki values(6, 8);
insert into zamowienia_ksiazki values(7, 7);
insert into zamowienia_ksiazki values(8, 6);

insert into historia_zamowien values (null, 1, 1, (select id_klienta from zamowienia where id_z = 1));
insert into historia_zamowien values (null, 1, 2, (select id_klienta from zamowienia where id_z = 1));
delete from zamowienia_ksiazki where id_z=1;
delete from zamowienia where id_z=1;

insert into historia_zamowien values (null, 3, 4, (select id_klienta from zamowienia where id_z = 3));
delete from zamowienia_ksiazki where id_z=3;
delete from zamowienia where id_z=3;
