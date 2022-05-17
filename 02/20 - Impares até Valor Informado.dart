import 'dart:io';

void main() {
  stdout.write("Informe o Valor: ");
  final valor = int.parse(stdin.readLineSync().toString());
  String numeros = "";

  for (var i = 1; i <= valor; i++) {
    if (i % 2 != 0) {
      numeros = numeros == "" ? numeros + "$i" : numeros + ", $i";
    }
    if (i == valor) {
      numeros = numeros + ".";
    }
  }

  print("$numeros");
}