import 'package:flutter/material.dart';
import 'brojac.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prva aplikacija',
        home: Scaffold(
            appBar: AppBar(
            title: const Text('Moj prvi Flutter projekt'),
            ),
            body: const Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        Text('Student: Dragan Arapović'),
                        SizedBox(height: 12),
                        Text('Dart i Flutter'),
                        Text('Zelim nauciti Flutter i Dart'),
                        SizedBox(height: 12),
                        Brojac(),
                    ],
                ),
            ),
        ),
    );
 }
}

