import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Runes myemoji = Runes('\u{1f607}');
  
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Navegation",
      home: PagOne(),
    );
  }
}

class PagOne extends StatelessWidget {
  const PagOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PagOne"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to pag2"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PagTwo(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PagTwo extends StatelessWidget {
  const PagTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PagTwo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Go back"),
        ),
      ),
    );
  }
}
