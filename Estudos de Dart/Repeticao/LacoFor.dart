void main() {
  /* O laço for em Dart é igual ao for do C
  */
  for (int i = 10; i > 0; i--)
    print("Lança em: $i");

  for (int i = 0; i < 3; i++)
    for (int j = 0; j < 3; j++)
      print("($i,$j)");
}
