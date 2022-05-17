import 'dart:io';

void main() {
  stdout.write("Seu Nome Ou Enter Para Visitante: ");
  final nome = stdin.readLineSync().toString();
  print(nome == "" ? "Seja Bem-Vindo(a), Visitante!" : "Seja Bem-Vindo(a) $nome!");
}