STUDENT: Dragan Arapović
Flutter verzija: 3.47.7
Dart verzija: 3.13.5
OS: Windows 11 Home
Korišteni uredjaj: ASUS Vivobook

Odgovorite u README: zašto je bolje zadati boju u temi nego na svakom widgetu?
Odgovor: Zato sto na taj nacin zadajemo globalno za svaki widget kako ce izgledati, odnosno koje boje ce koristiti. Umjesto da ulazimo u svaki pojedinacni widget i rucno mijenjamo boju, ovako samo promijenimo boju na jednom mjestu za citavu aplikaciju.


Provjera razumijevanja 1: objasnite što radi validate() i zašto validator vraća null za ispravan unos

Odgovor: Validate() provjerava sva polja forme pomocu njihovih validator funkcija. Ako postoji neispravan unos, prikazuje poruku o gresci i vraca nam false, a ako su svi ispravni onda vraca true.
Validator vraca Null ako je unos ispravan jer to znaci da nema greske.

Provjera razumijevanja 2: objasnite zašto se nakon await Navigator.push provjerava mounted

Odgovor: Mounted se provjerava kako bismo bili sigurni da je widget jos uvijek aktivan nakon await Navigator.push. 
Ako je widget u medjuvremenu uklonjen onda ne smijemo koristiti njegov context ni pozivati setState() jer to moze uzrokovati gresku.