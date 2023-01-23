void main() {
  Runes myemoji = Runes('\u{1f607}');

  print(myemoji); //128519

  print(String.fromCharCodes(myemoji)); // 😇

  /* 
  As variáveis do tipo Runes são do tipo UTF-32 para strings
  e são bastante usadas para representar emojis
  
  
  */
}
