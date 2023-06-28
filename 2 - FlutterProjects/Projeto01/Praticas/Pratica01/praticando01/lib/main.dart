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
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            "Home Page",
          ),
          actions: const [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            
            ),
            Icon(Icons.more_vert),
          ],        
          backgroundColor: Colors.purple,
        ),


        body: Text("Número é: $numero"),
      ),
    );
  }
}
