void main() {
  int numero = 342432; // Igual em C
  double real = 23.1231253; // Igual em C
  String nome = 'João Vitor'; // String padrão
  bool simNao = true; //Booleano padrão

  // Variavel do tipo generico, não se sabe o tipo
  var aleatorio = Null; // depois de atribuido, não pode mudar

  // semelhante ao var, mas permite troca de tipo após atribuir
  dynamic aleotorioMudavel = true;

  print(real);
  print(nome);
  print(simNao);
  print(aleatorio);
}
