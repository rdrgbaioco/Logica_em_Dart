import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Informe o tamanho: ");
  var tamanho = double.parse(stdin.readLineSync(encoding: utf8).toString());
  final resultado = tamanho * tamanho;
  print("O resultado é: $resultado");
}