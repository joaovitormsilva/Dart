void main() {
  List<pessoa> pessoas = [pessoa('João', 20), pessoa('Rafa', 15)];
  
  pessoas.add(pessoa('Mari', 32));

  pessoas.forEach((pessoa pessoa) {
    print('${pessoa.nome} com ${pessoa.idade} anos');
  });

  /*
  pessoa pessoa1 = pessoa('João', 20);
  pessoa pessoa2 = pessoa('Rafa', 15);
  */
}

class pessoa {
  String nome = '';
  int idade = 0;

  pessoa(this.nome, this.idade);

  void apresenta() {
    print("Meu nome eh: ${this.nome} e idade é: ${this.idade}");
  }
}
