Provjera razumijevanja 1:
//objasnite zašto skup oznake sadrži dva elementa i zašto dohvat za 
Miju u početnom primjeru daje zamjensku nulu.

Odgovor: skup "oznake" sadrži dva elementa zato što skupovi ne ubrajaju prethodno postojeće članove kao nove elemente skupa, tako da možemo imati još stotinu članova "novo", ono će i dalje izbaciti da imamo samo dva člana.
U početnom primjeru dohvat za Miju nam daje zamjensku nulu zato što smo koristili "print(bodovi['Mia'] ?? 0);", odnosno ukoliko ništa nije upisano za Miju (da je vrijednost null) ono će ispisati zamjenski tekst, u ovom slučaju 0.