
 // ignore_for_file: avoid_print
import 'dart:async';
import 'package:zadatci_app/repozitorij.dart';

Future<void> main() async {
 final repo = ZadatakRepozitorij(neuspjeha: 1);

 // 1. Future.wait i mjerenje vremena
 final stopwatch = Stopwatch()..start();

 try {
   final rezultati = await Future.wait([
     repo.dohvati(),
     repo.dohvati(),
   ]);

   stopwatch.stop();

   print('Broj dohvaćenih popisa: ${rezultati.length}');
   print('Vrijeme dohvaćanja: ${stopwatch.elapsedMilliseconds} ms');
 } on ZadatciException catch (e) {
   print('Pogreška: ${e.poruka}');
 }

 // 2. Dohvat s timeoutom od 300 ms
 try {
   final zadaci = await repo
       .dohvati()
       .timeout(const Duration(milliseconds: 300));

   for (final z in zadaci) {
     print('- ${z.naslov} (${z.zavrsen ? 'gotovo' : 'u tijeku'})');
   }
 } on TimeoutException {
   print('Isteklo vrijeme');
 } on ZadatciException catch (e) {
   print('Pogreška: ${e.poruka}');
 }

 for (var pokusaj = 1; pokusaj <= 2; pokusaj++) {
 try {
 print('Pokušaj $pokusaj: dohvaćam...');
 final zadaci = await repo.dohvati();
 for (final z in zadaci) {
 print('- ${z.naslov} (${z.zavrsen ? 'gotovo' : 'u tijeku'})');
 }
 break;
 } on ZadatciException catch (e) {
 print('Pogreška: ${e.poruka}');
 } finally {
 print('Pokušaj $pokusaj završen');
 }
 }
}
