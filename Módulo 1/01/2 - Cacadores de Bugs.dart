import 'dart:io';
import 'dart:math';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final x1 = int.parse(inputs[0]);
  final y1 = int.parse(inputs[1]);
  final x2 = int.parse(inputs[2]);
  final y2 = int.parse(inputs[3]);

  double distancia;
  String classificacao;

  distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

  if (distancia > 4) {
    classificacao = 'Longe';
  } else {
    classificacao = 'Perto';
  }

  print(classificacao);
}
