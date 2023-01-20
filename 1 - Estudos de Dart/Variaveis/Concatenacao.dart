void main() {
/* Exemplo de print,
 Em C: printf("%d",numero);
Em Dart: print("Numero eh $numero");

*/
  int n = 5, n2 = 10;
  print('O numero a ser somado eh $n e $n2');

  // É possível realizar contas
  print('A soma de n + n2 eh ${n + n2}');

  // outro jeito de concatenar eh:
  print('Código ' + n.toString() );

  // A função "to.String()", converte n para o tipo string
}
