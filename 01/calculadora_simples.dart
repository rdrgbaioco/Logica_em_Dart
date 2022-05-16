import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double count;
  switch (operator) {
    case '-':
    count = number1 - number2;
    break;
    case '/':
    count = number1 / number2;
    break;
    case '*':
    count = number1 * number2;
    break;
    default:
    count = number1 + number2;
    break;
  }

  final resultInt = count ~/ 1;
  final resultAprox = count.toStringAsFixed(5);
  final resultRest = count % 1;

  if (resultRest > 0) {
    print(double.parse(resultAprox));
  } else {
    print(resultInt);
  }
}
