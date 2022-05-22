import 'dart:io';

void main() {
  stdout.write("Informe um Valor: ");
  final valor1 = int.parse(stdin.readLineSync().toString());
  stdout.write("Informe outro Valor: ");
  final valor2 = int.parse(stdin.readLineSync().toString());

  final maior = valor1 > valor2 ? valor1 : valor2;
  final menor = valor1 < valor2 ? valor1 : valor2;
  final igualdade = valor1 == valor2 ? "Valores iguais" : "O maior valor é $maior e o menor valor é $menor";
  print(igualdade);
}