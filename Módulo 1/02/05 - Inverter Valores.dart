import 'dart:io';

void main() {
  stdout.write("Valor A: ");
  final valorA = int.parse(stdin.readLineSync().toString());
  stdout.write("Valor B: ");
  final valorB = int.parse(stdin.readLineSync().toString());

  print("Valores Originais:");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
  print("Valores Invertidos:");
  print("- Valor A: $valorB");
  print("- Valor B: $valorA");
}