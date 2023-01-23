/*
  Future - representa um valor que será avaliado em algum ponto do futuro, 
  por exemplo, chamar um serviço online que recupera valores podendo ser rápido
  ou levar muito tempo, e não pode parar o usuário de usar o app enquanto roda 
  o processo.

  as keywords 'async' e 'await' são usadas em conjunções

  Marque a função como 'async' e coloque o 'await'' antes da função que irá retornar
  um dado no futuro.
  Exemplo:

  Future<int> sumNumsPi() async{
    int sum = await sumNums();
    return sum;
  }





 */

Future<int> calculenumspi() async {
  int count = await sumnuns();
  return count;
}

int sumnuns() {
  int num = 10;
  return num;
}
