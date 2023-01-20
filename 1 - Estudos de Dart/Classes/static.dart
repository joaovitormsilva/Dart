void main() {
  //mundo terra = mundo();
  //print(terra.gravidade);

  print(mundo.gravidade);

  print(mundo.duplica());
}

class mundo {
  // possivel acesso fora da classe sem ter uma variavel
  // para inicia-la

  static double gravidade = 9.81;

  mundo();

  static double duplica() {
    return gravidade *= 2;
  }
}
