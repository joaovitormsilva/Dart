import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class Album {
  final String message;
  final String status;

  const Album({
    required this.message,
    required this.status,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      message: json['message'],
      status: json['status'],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future<http.Response> fetchAlbum() {
      return http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testando API"),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "TEAODMAWOD",
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ),
    );
  }
}
