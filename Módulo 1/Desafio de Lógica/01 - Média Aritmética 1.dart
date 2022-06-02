import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(String nome, List<double> cofre) {
  int depositos = cofre.length;
  double soma = 0.0;
  for (var i = 0; i < cofre.length; i++) {
    soma += cofre[i];
  }
  double media = soma / depositos;
  print('$nome ja tem R\$ ${soma.toStringAsFixed(2)} guardados!');
  print('A media dos depositos e de R\$ ${media.toStringAsFixed(2)} por mes.');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs[0], inputs.sublist(1).map(double.parse).toList());
}