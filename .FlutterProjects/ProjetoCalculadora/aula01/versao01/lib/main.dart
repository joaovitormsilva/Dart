import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String valor = '0';

  void mudarnumero(String valor, int digito) {
    String aux = digito.toString();
    setState(() {
      valor = valor + aux;
      print(valor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center( child:Text("Calculadora"),
        ),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 300,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'AC',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                'X',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '7',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '8',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '9',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '/',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '4',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '5',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '6',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '*',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '1',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '2',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '3',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '-',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '0',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                ',',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '=',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '+',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
