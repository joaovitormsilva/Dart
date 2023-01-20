void main() {
  int n = 150, n2 = 130;

  print('Soma é ${n + n2}');
  print('Subtracao é ${n - n2}');
  print('divisao eh ${(n / n2).toDouble().toStringAsFixed(2)}');
  print('Multiplicacao eh ${n * n2}');

  print('Divisao ${(n / n2).toStringAsFixed(2)}');

  // Para pegar a parte inteira da divisao:
  print('Divisao parte inteira:  ${n ~/ n2}');

  // Para pegar a parte decimal da divisão:
  print('Divisao parte decimal: ${n % n2}');

  // Incremento e Decremento

  n++;
  n--;
  n += 343;
}
