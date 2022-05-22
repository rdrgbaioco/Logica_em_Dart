import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final valorEmprestimo = double.parse(inputs[0]);
  final serasaScore = int.parse(inputs[1]);
  final meses = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double juros;
  if (serasaScore < 300) {
    juros = 3 / 100;
  } else if (serasaScore < 700) {
    juros = 9 / 100;
  } else {
    juros = 15 / 100;
  }

  final parcela = (valorEmprestimo + (valorEmprestimo * juros)) / meses;
  print(parcela);

}
