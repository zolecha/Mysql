# wszystkie książki z autorami i tytułami uporządkowane po id_k
SELECT 
    k.id_k AS 'ID',
    k.tytul AS 'Tytuł',
    k.rok 'Rok Wydania',
    k.opis 'Opis Książki',
    a.imie_a AS 'Imię Autora',
    a.nazwisko_a AS 'Nazwisko Autora'
FROM
    ksiazki AS k
        JOIN
    ksiazki_autorzy AS ka ON (k.id_k = ka.id_k)
        JOIN
    autorzy AS a ON (ka.id_a = a.id_a)
    ORDER BY k.id_k;
    
#sprawdzenie wolnych książek 
select * from wolne_ksiazki;
    
#sprawdzanie wolnych książek z danej kategorii
select * from wolne_ksiazki where kategoria = 'przygodowe'; 

#sprawdzanie informacji odnośnie zamowienia
select * from zamowienia_klienci_ksiazki;  

#sprawdzanie informacji odnośnie zamowienia z konkretnym statusem
select * from zamowienia_klienci_ksiazki where status = 'upłynął termin zwrotu'; 
    
#wyświetlenie historii zamówień
select * from historia_zamowien;

# jeśli w celach statystycznych chcę wiedzieć kogo dotyczyło zamowienie i jakiej ksiązki 
SELECT 
    hz.id_klienta, hz.id_z, k.tytul, kl.imie_k 'Imię Klienta', kl.nazwisko_k 'Nazwisko Klienta'
FROM
    klienci kl
        NATURAL JOIN
    historia_zamowien hz
        NATURAL JOIN
    ksiazki k
    order by id_klienta;
    
#wyświetlanie kar
select*from kary;

SELECT 
    kr.id_kary, kl.imie_k 'Imię Klienta', kl.nazwisko_k 'Nazwisko Klienta', kr.kwota 'kwota kary'
FROM
    klienci kl
        NATURAL JOIN
    kary kr;

#wyświetlanie kar i informacji odnośnie klienta i książki
SELECT 
    kr.id_kary, kl.imie_k, kl.nazwisko_k, kr.kwota, ks.tytul
FROM
    klienci kl
        JOIN
    historia_zamowien hz ON (kl.id_klienta = hz.id_klienta)
        JOIN
    kary kr ON (hz.id_klienta = kr.id_klienta)
        JOIN
    historia_zamowien hh ON (kr.id_z = hh.id_z)
        JOIN
    ksiazki ks ON (hz.id_k = ks.id_k);
    
# wyświetlanie infomacji (z widoku) odnośnie zamówień wraz z danymi klientów i książek
select * from zamowienia_klienci_ksiazki;

# wyświetla powyższy widok z warunkiem where
select * from zamowienia_klienci_ksiazki where data_odbioru is null;
