import 'dart:io';

void main() {
  stdout.write("Informe 4 Valores: ");

  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final valorDigitado = line.split(' ');

  final valor1 = int.parse(valorDigitado[0]);
  final valor2 = int.parse(valorDigitado[1]);
  final valor3 = int.parse(valorDigitado[2]);
  final valor4 = int.parse(valorDigitado[3]);

  final somaDeProdutos = valor1 * valor2 + valor3 * valor4;
  print("Soma de produtos: $somaDeProdutos");
}