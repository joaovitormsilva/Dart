void main() {
  const int num1 = 14;
  print(num1);
  // Valor não conhecido durante o tempo de compilação
  // Exemplo: hora atual, funções que mudam de valor no tempo
  final DateTime data = DateTime.now();

  // Valor conhecido durante o tempo de compilação
  // Ex: gravidade, pi.
  print(DateTime.now());
}
