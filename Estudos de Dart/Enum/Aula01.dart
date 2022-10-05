enum telas {
  splahScreen,
  homepage,
  login,
}

enum estados {
  SP,
  MG,
  RJ,
  ES,
}

void main() {
  telas home = telas.homepage;
  estados todosEstados = estados.MG;
  
  switch (home) {
    case telas.splahScreen:
      print('logo');
      break;

    case telas.homepage:
      print('home');

      break;

    case telas.login:
      print('login');

      break;
  }
}
