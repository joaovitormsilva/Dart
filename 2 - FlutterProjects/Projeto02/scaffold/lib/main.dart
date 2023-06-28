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

        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Center(
              child: Text(
                'linha 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'linha 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'linha 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
