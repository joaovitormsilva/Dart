import 'dart:ffi';

void main() {
  String nome = 'João Vitor';
  int n2 = 20;
  Pessoa(nome, n2);
}

void Pessoa(String nome, int n2) {
  print("Nome eh: " + nome);
  print('Idade ...: ' + n2.toString());
}
