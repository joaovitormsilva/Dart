import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo exemplo Scaffold'),
        ),

        // mesma linha
        // alinhamento: main axis - horizontal
        // cross axis - vertical

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
        
          children: const [
            Center(
              child: Text(
                'coluna 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'coluna 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'coluna 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
