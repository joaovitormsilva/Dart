void main() {
  pessoa pessoa1 = pessoa('João Vitor', 18);
  pessoa1.apresenta();

  pai pa1 = pai("José", 35, 'Engenheiro');
  pa1.apresenta();
}

class pessoa {
  String nome = '';
  int idade = 0;

  pessoa(this.nome, this.idade);

  void apresenta() {
    print("Nome é:${this.nome}, idade é: ${this.idade}");
  }
}

// Extends - serve para extender as propriedades da class Pessoa
class pai extends pessoa {
  String trabalho = '';

  // Super - serve para utilizar o construtor da classe pessoa
  // o super "trás" o construtor para a classe filha
  pai(nome, idade, this.trabalho) : super(nome, idade);

  //pode trazer uma variavel também
  void apresenta() {
    print(super.idade); // super trazendo uma variavel da classe pai

    print(
        "Nome é:${this.nome}, idade é: ${this.idade}, profissao é: ${this.trabalho}");
  }
}
