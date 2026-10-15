STUDENT: Dragan Arapović <br>
Flutter verzija: 3.47.7<br>
Dart verzija: 3.13.5<br>
OS: Windows 11 Home<br>
Korišteni uredjaj: ASUS Vivobook


Provjera razumijevanja 1:
objasnite zašto skup oznake sadrži dva elementa i zašto dohvat za 
Miju u početnom primjeru daje zamjensku nulu.

Odgovor: skup "oznake" sadrži dva elementa zato što skupovi ne ubrajaju prethodno postojeće članove kao nove elemente skupa, tako da možemo imati još stotinu članova "novo", ono će i dalje izbaciti da imamo samo dva člana.
U početnom primjeru dohvat za Miju nam daje zamjensku nulu zato što smo koristili "print(bodovi['Mia'] ?? 0);", odnosno ukoliko ništa nije upisano za Miju (da je vrijednost null) ono će ispisati zamjenski tekst, u ovom slučaju 0.


Provjera razumijevanja 2: 
objasnite zašto su u konstruktoru zadatka naslov označen s required, a zavrsen ima zadanu vrijednost, i što bi se dogodilo da zadatak stvorimo bez naslova.

Odgovor: Naslov je oznacen s required zato sto je to vrijednost koju moramo upisati prilikoom pozivanja konstruktora. Zavrsen ima zadanu vrijednost zato sto je to tzv. deafultna vrijednost, kada kreiramo neki zadatak logicno je da on nece biti odmah zavrsen po kreiranju, nego ce biti "U tijeku". Da zadatak stvorimo bez naslova dobili bi gresku "Error: Required named parameter 'naslov' must be provided."
