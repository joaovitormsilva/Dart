import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://hp-api.onrender.com/api/characters'));

  if (response.statusCode == 200) {
    // Se a solicitação for bem-sucedida, analise os dados JSON e retorne uma lista
    List<dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    // Se a solicitação falhar, lance uma exceção
    throw Exception('Falha ao carregar os dados da API');
  }
}
