STUDENT: Dragan Arapović
Flutter verzija: 3.47.7
Dart verzija: 3.13.5
OS: Windows 11 Home
Korišteni uredjaj: ASUS Vivobook

Oracle Linux image: Oracle Linux 9 aarch64
Shape: VM.Standard.A1.Flex
Supabase verzija: self-hosted/v0.8.4

Provjere razumijevanja:

1. Sto je Always Free instanca i zasto za Supabase ne smijemo odabrati Micro shape?

Always Free instanca je besplatna virtualna masina na Oracle Cloudu koja ima ogranicene resurse. Micro shape ima samo 1 GB RAM-a, sto nije dovoljno za Supabase jer on zahtijeva najmanje 4 GB memorije.

2. Koja je razlika izmedu Docker slike (image) i kontejnera te zasto se podaci baze moraju drzati u volumenu?

Docker image je predlozak prema kojem se stvara kontejner, a kontejner je pokrenuta instanca te slike. Podaci baze moraju biti u volumenu kako se ne bi izgubili nakon zaustavljanja ili brisanja kontejnera.

3. Sto rade servisi Postgres, REST (PostgREST), Auth, Storage i Studio te sto je gateway na portu 8000?
- Postgres – sprema podatke u bazu.
- REST (PostgREST) – omogucuje pristup bazi putem API-ja.
- Auth – upravlja prijavom i autentifikacijom korisnika.
- Storage – sluzi za spremanje datoteka.
- Studio – web sucelje za upravljanje bazom i Supabaseom.
- Gateway – prima zahtjeve na portu 8000 i prosljeduje ih odgovarajucim servisima.
4. Sto bi aplikacija prikazala da u skripti nema politike "anon cita" i zasto nema poruke o pogresci?

Aplikacija bi prikazala prazan popis zadataka jer RLS blokira pristup podacima bez odgovarajuce politike. Nema poruke o pogresci jer Supabase jednostavno ne vraca podatke koje korisnik nema pravo citati.

5. Zasto ViewModel mijenja lokalni popis tek nakon sto izvor uspije, a ne prije? Sto bi korisnik vidio da je obrnuto, a veza padne?

ViewModel mijenja lokalni popis tek nakon uspjesnog spremanja kako bi podaci ostali uskladeni s bazom. Da je obrnuto, a veza padne, korisnik bi vidio promjenu u aplikaciji koja zapravo nije spremljena u bazu.

6. Zasto se u aplikaciju stavlja publishable, a ne secret kljuc, i sto bi se dogodilo kad bi secret kljuc zavrsio u repozitoriju?

Publishable kljuc je namijenjen za koristenje u aplikaciji, dok secret kljuc sluzi za siguran pristup na posluzitelju. Ako bi secret kljuc zavrsio u javnom repozitoriju, netko bi ga mogao iskoristiti za neovlasteni pristup i izmjenu podataka u bazi.