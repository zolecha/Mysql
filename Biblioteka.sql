create database biblioteka;

use biblioteka;

create table autorzy (
id_a int primary key auto_increment,
imie_a varchar(40) not null,
nazwisko_a varchar(45) not null);

create table kategoria (
id_kat int primary key auto_increment,
kategoria varchar(100) not null);

create table wydawnictwo (
id_wyd int primary key auto_increment,
nazwa varchar(100) not null,
adres text not null);

create table ksiazki (
id_k int primary key auto_increment,
id_kat int,
tytul text not null,
id_wyd int not null,
rok varchar(4) not null,
isbn varchar(13),
opis text,
foreign key (id_kat) references kategoria(id_kat),
foreign key (id_wyd) references wydawnictwo(id_wyd)
);

create table ksiazki_autorzy(
id_k int,
id_a int,
foreign key (id_k) references ksiazki(id_k),
foreign key (id_a) references autorzy(id_a)
);

create table klienci (
id_klienta int primary key auto_increment,
imie_k varchar(40) not null,
nazwisko_k varchar (45) not null,
miasto varchar(70) not null,
kod varchar(6) not null,
adres text not null,
email varchar(35) not null,
telefon varchar(9)
);

create table zamowienia (
id_z int primary key auto_increment,
id_klienta int,
data_zamowienia date,
data_odbioru date,
termin_zwrotu date,
data_zwrotu date,
status varchar(30),
foreign key (id_klienta) references klienci(id_klienta)
);

create table kary (
id_kary int primary key auto_increment,
id_z int,
id_klienta int,
kwota decimal (8,2),
foreign key (id_klienta) references klienci(id_klienta)
);

create table zamowienia_ksiazki(
id_z int,
id_k int unique, # unique po to żeby nie można było wypożyczyć ksiązki która już jest wypożyczona
foreign key (id_z) references zamowienia(id_z),
foreign key (id_k) references ksiazki(id_k)
);

create table bibliotekarz(
id_b int primary key auto_increment,
login varchar(30) not null unique,
password varchar(30) not null
);

create table czytelnik(
id_czyt int primary key auto_increment,
id_klienta int,
email varchar(45) not null unique,
password varchar(30) not null,
foreign key (id_klienta) references klienci(id_klienta)
);

create table historia_zamowien (
id_hz int primary key auto_increment,
id_z int not null,
id_k int not null,
id_klienta int not null);

# widok książek i kategorii
CREATE VIEW ksiazki_kategorie AS
    SELECT 
        k.id_k, k.tytul, kat.kategoria
    FROM
        ksiazki k
            JOIN
        kategoria kat ON (k.id_kat = kat.id_kat) order by id_k;
 

# widok z ksiązkiami które nie zostały wypożyczone
CREATE VIEW wolne_ksiazki AS
    SELECT 
        k.id_k,
        k.tytul,
        kat.kategoria,
        k.rok,
        k.opis,
        z.id_z
    FROM
        ksiazki AS k
            JOIN
        ksiazki_kategorie AS kat ON (k.id_k = kat.id_k)
            LEFT JOIN
        zamowienia_ksiazki AS z ON (kat.id_k = z.id_k)
    WHERE
        id_z IS NULL
    ORDER BY k.id_k;
    
    
create view zamowienia_klienci_ksiazki as 
	SELECT 
    distinct 
    zk.id_k,
    k.tytul,
    z.id_z,
    kl.imie_k,
    kl.nazwisko_k,
    z.data_zamowienia,
    z.data_odbioru,
    z.termin_zwrotu,
    z.data_zwrotu,
    z.status 
    FROM zamowienia as z join zamowienia_ksiazki as zk on (z.id_z = zk.id_z)
    join ksiazki as k on (zk.id_k = k.id_k)
    join zamowienia_ksiazki as zks on (z.id_z = zks.id_z)
    join zamowienia as zm on (zks.id_z = zm.id_z)
    join klienci as kl on (zm.id_klienta = kl.id_klienta)
    order by z.id_z, k.id_k;



    



