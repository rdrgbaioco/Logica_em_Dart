import 'dart:io';

void main() {
  stdout.write("Nota 1: ");
  final nota1 = int.parse(stdin.readLineSync().toString());
  stdout.write("Nota 2: ");
  final nota2 = int.parse(stdin.readLineSync().toString());
  stdout.write("Nota 3: ");
  final nota3 = int.parse(stdin.readLineSync().toString());

  final media = (nota1 + nota2 + nota3) / 3;
  print("A média é: $media");
}