import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  if (num1 == num2 || num1 == num3 || num2 == num3) {
    print('Apenas numeros diferentes');
  } else {
    int maior;
    int intermediario;
    int menor;

    if (num1 > num2 && num1 > num3) {
      maior = num1;
    } else if (num2 > num1 && num2 > num3) {
      maior = num2;
    } else {
      maior = num3;
    }

    if (num1 < num2 && num1 < num3) {
      menor = num1;
    } else if (num2 < num1 && num2 < num3) {
      menor = num2;
    } else {
      menor = num3;
    }
    if (num1 != maior && num1 != menor) {
      intermediario = num1;
    } else if (num2 != maior && num2 != menor) {
      intermediario = num2;
    } else {
      intermediario = num3;
    }

    print('$maior $intermediario $menor');
  }
}