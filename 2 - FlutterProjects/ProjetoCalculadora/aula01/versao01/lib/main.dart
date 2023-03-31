import 'dart:developer';
import 'dart:ffi';

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
  String valor = '';

  void mudarnumero(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        setState(() {
          valor += tecla;
        });
        break;
      case 'AC':
        setState(() {
          valor = '';
        });
        break;
      case '+':
      case '-':
      case '*':
      case '/':
      default:
        break;
    }
  }

  Int calcular(String operacao, Int valor) {
    switch (operacao) {
      case '+':
      case '-':
      case '*':
      case '/':
    }
    return valor;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora"),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      valor,
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                height: 300,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  mudarnumero('AC');
                },
                child: const Text(
                  'AC',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('*');
                },
                child: const Text(
                  'X',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  mudarnumero("7");
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('8');
                },
                child: const Text(
                  '8',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('9');
                },
                child: const Text(
                  '9',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('/');
                },
                child: const Text(
                  '/',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  mudarnumero('4');
                },
                child: const Text(
                  '4',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('5');
                },
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('6');
                },
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('*');
                },
                child: const Text(
                  '*',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  mudarnumero('1');
                },
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('2');
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('3');
                },
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('0');
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  mudarnumero('0');
                },
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero(',');
                },
                child: const Text(
                  ',',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('=');
                },
                child: const Text(
                  '=',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mudarnumero('+');
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
