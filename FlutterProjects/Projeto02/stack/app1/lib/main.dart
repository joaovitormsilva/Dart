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
          title: const Text('Stack App'),
        ),
        body: Stack(
          //alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Positioned(
              bottom: 50 , right:50,

              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
