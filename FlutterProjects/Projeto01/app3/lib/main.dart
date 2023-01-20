import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// statelessWidget é para telas estáticas que não mudarão
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {




    /* O container cria um widget que tem posicionamento
      é necessário o 'textdirection'
    */




    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Page Title"),
          backgroundColor: Colors.purple,
        ),
        body: const Center(
          child: Text(
            "Comi o cu de quem leu",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
