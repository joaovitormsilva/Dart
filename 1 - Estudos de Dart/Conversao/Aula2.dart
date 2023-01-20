void main() {
  String nome = 'João Vitor';

  print(nome);

  print(nome.toLowerCase()); // converte todas em minúsculas

  print(nome.toUpperCase()); // converte todas em maiúsculas

  print(nome.trim()); // remove espaços no inicio e no fim da string

  print(nome.trimRight()); // remove espaços da direita
  print(nome.trimLeft()); //remove espaços da esquerda

  print(nome.padLeft(30, 'x'));
  // complementa o que 'falta' da string com 'x'
  print(nome.padRight(30, 'x'));

  print(nome.length);

  print(nome.substring(4));
  // pega "um pedaço" da string
  // começa em 4 e vai até o final, pode ter o começo e fim declarado

  print(nome.indexOf(' ')); // acha o index de algum valor na string

  print(nome.split(' '));
  //separa todas as partes de uma string em uma lista através
  // de um separador

  if (nome.contains('Vitor')) print('tem vitor');
}
