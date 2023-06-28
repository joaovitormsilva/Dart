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
            Image.network(
          "http://www.fbphoto.net/wp-content/uploads/2017/08/Dalias3-1024x687.jpg",
          fit: BoxFit.fitHeight,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
