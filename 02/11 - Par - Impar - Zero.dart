import 'dart:io';

void main() {
  stdout.write("Informe um Valor: ");
  final valor = int.parse(stdin.readLineSync().toString());

  if (valor % 2 == 0) {
    print("O valor $valor é par");
  } else if (valor % 2 == 1) {
    print("O valor $valor é impar");
  } else {
    print("O valor $valor é zero");
  }

}