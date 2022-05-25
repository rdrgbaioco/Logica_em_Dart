import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Informe o Número: ");
  final valor = int.parse(stdin.readLineSync(encoding: utf8).toString());
  int recursivo = 0;

  for (var i = 0; i <= valor; i++) {
    recursivo = recursivo + i;
  }
  print("Todos valores somados de 0 até $valor: $recursivo");
}