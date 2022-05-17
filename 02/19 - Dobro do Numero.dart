import 'dart:io';

void main() {
  stdout.write("Informe o Valor: ");
  final valor = int.parse(stdin.readLineSync().toString());

  if (valor % 5 == 0) {
    print(valor * 2);
  } else {
    print("O valor não é multiplo de 5");
  }
}