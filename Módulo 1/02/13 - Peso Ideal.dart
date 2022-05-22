import 'dart:io';

void main() {
  stdout.write("Informe sua Altura: ");
  final altura = double.parse(stdin.readLineSync().toString());
  stdout.write("Informe seu sexo: ");
  final sexo = stdin.readLineSync().toString();

  if (sexo == "M" || sexo == "m") {
    final pesoIdeal = (altura * 72.7) - 58;
    print("Seu peso ideal é: ${pesoIdeal.toStringAsFixed(2)} Kg");
  } else if (sexo == "F" || sexo == "f") {
    final pesoIdeal = (altura * 62.1) - 44.7;
    print("Seu peso ideal é: ${pesoIdeal.toStringAsFixed(2)} Kg");
  } else {
    print("Sexo inválido");
  }

}