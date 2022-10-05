void main() {
  jogador jogador1 = jogador(10, 10, 'Heroi 2');
  jogador1.printpos();
  inimigo inimigo1 = inimigo(10, 10, 'Monstro');
  inimigo1.printpos();

  if(jogador1.posX == inimigo1.posX && jogador1.posY == inimigo1.posY )
    jogador1.luta();
}

/* Pela class personagem ser só um molde, é melhor ela não ser
  instanciada 
*/
abstract class personagem {
  int posX = 0;
  int posY = 0;
  String nome = '';

  personagem(this.posX, this.posY, this.nome);

  int getPosX() => posX;
  int getPosY() => posY;

  void printpos() {
    print(
        'Personagem é: ${this.nome} na posX: ${this.posX} e na posY: ${posY}');
  }

  @override
  void luta();
}

class jogador extends personagem {
  jogador(int posx, int posy, String nome) : super(posx, posx, nome);
  
  void luta() {
    print('Lutando 1');
  }
}

class inimigo extends personagem {
  inimigo(int posx, int posy, String nome) : super(posx, posx, nome);

  void luta() {
    print('Lutando 2');
  }
}
