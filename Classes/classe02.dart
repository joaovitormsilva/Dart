void main() {
  pessoa pessoa1 = pessoa('João Vitor', 13696641, '', 2030);
  pessoa1.aluno();

  print(pessoa1.ano);
}

class pessoa {
  // propriedades
  String nome = '';
  int id = 0;
  String curso = '';
  int _ano = 0;

  // construtor
  pessoa(this.nome, this.id, this.curso, int anoPara) {
    this.ano = anoPara;
  }

  //seta a variavel interna
  void set ano(int ano) {
    if (ano < 2022) {
      this._ano = ano;
    }
  }

  // obter o valor da variavel
  int get ano {
    return this._ano;
  }

  //outra forma
  int getAno() => _ano;
  
  void aluno() {
    print('O nome do aluno é: ${this.nome}, sua id é: ${this.id}');

    if (curso.length == 0) {
      print('Curso não informado');
    } else
      print('É aluno do curso: ${this.curso}');
  }
}
