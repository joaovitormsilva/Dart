import 'package:flutter/material.dart';


void main() {
  //levar o valor no construtor
  runApp(const MyApp(title: 'ola mundo'));
}

class MyApp extends StatelessWidget {
  /*
    Para passar um parametro, basta inicia-lo na class
    e colocar no construtor, precisa ter o ='', = 0, etc..
   */
  final String title;
  const MyApp({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Text(title),
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
