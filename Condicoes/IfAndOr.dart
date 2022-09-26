void main() {
  String Clima = 'Sol';
  int temperatura = 35;

  // If básico
  if (Clima == 'Sol') {
    print('Vou sair de casa');
  } else {
    print('Vou ficar em casa');
  }

  // If composto com && AND
  if (Clima == 'Sol' && temperatura > 20) {
    print('Muito quente, sol queimando');
  } else {
    print('Não tem sol e está frio');
  }

  // If composto com OR
  if (Clima == 'Sol' || temperatura > 20) {
    print('Muito quente, sol queimando');
  } else {
    print('Não tem sol ou está frio');
  }

}
