import 'package:flutter/material.dart';
import 'package:widget_tree/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget tree',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:const Home(),
    );
  }
}