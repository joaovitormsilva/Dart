void main() {}

class Person {
  void theAge(int age) {
    print(age);
  }

  void theName(String name) {
    print(name);
  }
}

class homem with Person {
  int age;
  String name;

  homem(this.age, this.name);

  void theAgePerson() {
    theAge(age);
  }

  void theNamePerson() {
    theName(name);
  }
}


/*
  Para utilizar o Mixin, a classe primária não pode ter o construtor
  e no lugar do 'extends' usa-se o 'with'
  É possível chamar funções de outras classes sem especificar de qual classe é
  
*/