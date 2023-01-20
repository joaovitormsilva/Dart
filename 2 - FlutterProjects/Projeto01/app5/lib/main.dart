import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(nome: "Tiago gay"));
}

// Essa classe guarda valores em seus estados finais
class MyApp extends StatefulWidget {
  String nome = '';

  MyApp({super.key, this.nome = ''});

  @override
  State<MyApp> createState() => _MyAppState();
}

// essa guarda valores mutaveis durante o uso do app
class _MyAppState extends State<MyApp> {
  int salario = 0;

  void aumentasalario(int valor) {
    setState(() {
      salario += valor;
    });
  }

  void diminuisalario(int valor) {
    setState(() {
      salario -= valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            /*
               para usar um valor do widget é preciso usar o:
               'widget.variavel'
            */
            'Page inicial', 
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          // detector de gestos
          child: GestureDetector(
            /*
              'onTap' é uma função para quando clica uma vez
              na tela
            */
            onTap: () {
              /*A função 'setState' muda os valores
                na tela do aplicativo
              */
              setState(() {
                salario += 100;
              });

              // ou

              aumentasalario(100);
            },
            onDoubleTap: () {
              diminuisalario(200);
            },
            child: Text(
              "Quanto deve ${widget.nome} para o café: $salario",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
