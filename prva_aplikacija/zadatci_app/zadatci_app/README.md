STUDENT: Dragan Arapović
Flutter verzija: 3.47.7
Dart verzija: 3.13.5
OS: Windows 11 Home
Korišteni uredjaj: ASUS Vivobook

Provjera razumijevanja 1:
Tri stvari koje ne pripadaju ekranu:
1. Dohvacanje zadataka iz repozitorija - Model.
2. Dodjeljivanje ID-a novom zadatku - ViewModel.
3. Pracenje ucitavanja i pogresaka - ViewModel.

Provjera razumijevanja 2:
Ako bi StatistikaEkran stvorio novi ViewModel, imao bi vlastiti popis zadataka, odvojen od glavnog ekrana. Zbog toga ne bi prikazivao iste podatke i promjene ne bi bile zajednicke.

Provjera razumijevanja 3:
UnmodifiableListView sprjecava izravno mijenjanje popisa izvan ViewModela. Bez toga bi drugi dijelovi aplikacije mogli dodavati ili brisati zadatke bez notifyListeners(), sto bi uzrokovalo probleme s prikazom i podacima.

Provjera razumijevanja 4:
Bez notifyListeners() ekran se ne bi automatski osvjezio nakon promjene zavrsenosti zadatka. Promjena bi se dogodila u podacima, ali se ne bi odmah prikazala na ekranu.