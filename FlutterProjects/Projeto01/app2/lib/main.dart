import 'package:flutter/material.dart';

/* importando uma biblioteca que tem todos os elementos
   materiais do aplicativo: botoes, telas, etc..
  */
void main() {
  //runApp(const MyApp());
  runApp(
     MaterialApp(
      // Widget que permite utilizar algumas funções da material
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Page Title"),
          
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
    ),
  );
}
