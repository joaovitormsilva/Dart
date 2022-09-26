void main() {
  List<String> pessoas = ['João', 'José', 'Maria'];

  print(pessoas);

  //acesso à ultima posição da lista
  print(pessoas[pessoas.length - 1]);

  // adiciona na ultima posição
  pessoas.add('Marcos');
  print(pessoas);

  //adiciona na posição desejada
  pessoas.insert(2, 'Marcelo');
  print(pessoas);

  //remover da lista
  pessoas.removeAt(2);
  print(pessoas);

  int posicao = 0;
  //extrair cada elemento da lista
  pessoas.forEach((String pessoa) {
    print("{${posicao},${pessoa}}");
    posicao++;
  });
}
