void main() {
  double pi = 3.141596;
  print(pi);
  print(pi.abs()); // dá o valor absoluto do número, "vira positivo"

  print(pi.toInt()); // dá o valor em inteiro

  print(pi.floor()); // arredonda pra baixo

  print(pi.ceil()); // arredonda pra cima

  print("Valor de pi é: " + pi.toString()); //transforma em string

  print(pi.clamp(2, 3));
  /*delimita um valor inferior e um valor superior*/

  print(pi.round());
  //arredonda o valor pra inteiro de:x.49 pra x, e x.50 para x+1

  print(pi.toStringAsFixed(2));
  // mantem um número de casas decimais e retorna uma string

  print(pi.truncate()); //remove as casas

  // comparações isAlgoCoisa
  if (!pi.isNaN) {
    print('é numero');
  }
}
