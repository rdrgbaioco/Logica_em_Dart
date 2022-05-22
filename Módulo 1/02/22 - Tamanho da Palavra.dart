import 'dart:io';

void main() {
  stdout.write("Informe uma Palavra: ");
  final palavra = stdin.readLineSync().toString();

  print('A palavra "$palavra" tem ${palavra.length} letras.');
}