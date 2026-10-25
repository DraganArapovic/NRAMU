STUDENT: Dragan Arapović
Flutter verzija: 3.47.7
Dart verzija: 3.13.5
OS: Windows 11 Home
Korišteni uredjaj: ASUS Vivobook

Provjera razumijevanja 1:

1. Polja modela su tipa final, što znaci da im se vrijednost moze dodijeliti samo jednom kod kreiranja objekta. Nakon toga vrijednosti se ne mogu direktno mijenjati. Zato je taj model nepromjenjiv.

2. Ako polje naslov nedostaje dobit cemo gresku, jer naslov ne moze biti Null.

Provjera razumijevanja 2:

1. Ako iznimku iz Futurea ne uhvatimo onda cemo dobiti gresku.

Provjer arazumijevanja 3:

1. Future se stvara u polju kako se ne bi ponovno pokretao svaki put kada se izvrsi metoda build, sto bi uzrokovalo nepotrebno dohvacanje podataka.

Tri stanja koja zaslon s podacima mora prikazati su:
- Učitavanje – dok se podaci dohvaćaju.
- Uspjeh – kada su podaci uspjesno dohvaceni.
- Pogreska – kada dohvacanje podataka ne uspije.