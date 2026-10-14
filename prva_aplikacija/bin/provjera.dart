// ignore_for_file: avoid_print, equal_elements_in_set
void main() {
 final ime = 'Dragan';
 int brojVjezbe = 1;
 String? napomena;
 napomena = 'Prvi samostalni rad';
 final teme = <String>['Dart', 'Flutter', 'Git', 'Firebase'];
 final oznake = <String>{'novo', 'novo', 'vjezba'};
 final bodovi = <String, int>{'Ana': 80, 'Ivan': 55, 'Mia': 70};
 print('Student: $ime');
 print('Vjezba: $brojVjezbe');
 print(napomena ?? 'Bez napomene');
 print(teme[0]);
 print(oznake.length);
 print(bodovi['Mia'] ?? 0);
}