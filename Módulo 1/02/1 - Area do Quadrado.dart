import 'dart:io';

void main() {
  stdout.write("Informe o tamanho: ");
  var tamanhoInt = int.parse(stdin.readLineSync().toString());
  final resultado = tamanhoInt * tamanhoInt;
  print("O resultado é: $resultado");
}