void main() {
  int n = 10, n2 = 30;
  int retorno = soma(n, n2);
  print('soma é: $retorno');

  // valores constantes recomenda-se o uso do 'const'
  const pi = 3.1415962;
  print(pi);
}

int soma(int n, int n2) {
  return n + n2;
}
