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
          title: const Center(
            child: Text(
              'Ligação',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),

        // mesma linha
        // alinhamento: main axis - horizontal
        // cross axis - vertical

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '1',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '4',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '6',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '7',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '8',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '9',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '*',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Text(
                  '#',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Ligar',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: const [
                Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
