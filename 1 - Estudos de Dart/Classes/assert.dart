void main() {
  Fruit create = Fruit(Null);

  print(create.type);
}

class Fruit {
  var type;
  Fruit(this.type) : assert(type != Null);

  /* O assert mostra um erro se o valor estiver faltando, durante o processo de 
  debug.
  */
}
