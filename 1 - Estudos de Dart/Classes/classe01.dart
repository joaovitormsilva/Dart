void main() {
  pessoa pessoa1 = pessoa('João Vitor', 08, 04, 2003);
  pessoa1.apresenta();

  pessoa pessoa2 = pessoa('Igor', 24, 10, 1995);
  pessoa2.apresenta();
}

// Como em C, uma classe pode ser considerada uma 'struct'
// contém os dados a serem guardados
class pessoa {

  // Propriedades da Classe - Variáveis
  String nome = '';
  int data = 0, mes = 0, ano = 0;

  /*
    essa parte se refere ao 'construtor', que é responsavel
    por ser chamado em outras funções e armazenar dentro da 
    class
  */
  pessoa(this.nome, this.data, this.mes, this.ano);

  // Métodos da Classe - Funções
  void apresenta() {
    print('Nome eh: ${this.nome} data eh:${this.data}/${this.mes}/${this.ano}');
  }
}
