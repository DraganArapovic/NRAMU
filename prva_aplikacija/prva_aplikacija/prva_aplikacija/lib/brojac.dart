import 'package:flutter/material.dart';
class Brojac extends StatefulWidget {
 const Brojac({super.key});
 @override
 State<Brojac> createState() => _BrojacState();
}
class _BrojacState extends State<Brojac> {
 int _klikova = 0;
 @override
 Widget build(BuildContext context) {
 return ElevatedButton(
 onPressed: () => setState(() => _klikova++),
 child: Text('Klikova: $_klikova'),
 );
 }
}