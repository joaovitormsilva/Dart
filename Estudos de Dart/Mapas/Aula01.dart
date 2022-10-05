void main() {
  /*
    Um mapa em dart é da forma:
      Map <Tipo_da_chave,tipo_do_valor> nome_do_mapa = Map();

      Aceita diferentes tipos.
  */
  Map<int, String> numeros = Map();
  numeros[1] = 'Um';
  numeros[2] = 'Dois';
  numeros[3] = 'tres';

  print(numeros.values);

  Map<String, String> estados = Map();
  estados['SP'] = 'São Paulo';
  estados['MG'] = 'Minas Gerais';

  print(estados.values);
}
