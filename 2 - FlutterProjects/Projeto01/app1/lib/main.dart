import 'package:flutter/material.dart';

/* importando uma biblioteca que tem todos os elementos
   materiais do aplicativo: botoes, telas, etc..
  */
void main() {
  //runApp(const MyApp());
  runApp(
    /*
      A função "runApp()"
      é necessária para iniciar 
      um aplicativo

    */
    const MaterialApp(
      /*
      O Widget "MaterialApp" é o construtor mais básico que tem e inicia 
      a 'construção' do aplicativo
    */
      /*
        O widget 'home' simboliza a tela inicial do App
          o comando 'center' alinha no centro da tela
            e espera um 'child' que é o widget 'filho' do
            widget center.
          o comando 'Text' cria um texto no app
      */
      home: Center(
        child: Text(
          "Comi o cu de quem leu",
          // 'TextStyle' é a formatação do texto
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            backgroundColor: Colors.black,
          ),
        ),
      ),
    ),
  );
}
