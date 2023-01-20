import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
  É preciso configurar o arquivo 'pubspec.yaml' na parte assets:
  Por exemplo:
    assets:
    - assets/images/cat1.png
    - assets/images/cat2.png
    - assets/images/arcoiri.png

 */

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
          title: const Text('Imagens'),
        ),
        body:
            //Image.asset('assets/images/cat2.png'),
            Image.asset(
          'assets/images/arcoiri.png',

          //width: 200,
          //height: 200,
          fit: BoxFit
              .cover, // faz a imagem cobrir toda a tela, respeitando a proporção dela

          width: double.infinity, //'truque' para a imagem cobrir toda a tela
          height: double.infinity,
        ),
      ),
    );
  }
}
