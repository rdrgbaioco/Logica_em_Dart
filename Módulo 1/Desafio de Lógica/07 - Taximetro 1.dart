import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(double minuto, double km) {
  double total = 0;
  double valorKm = 0;
  double valorMinuto = 0;

  if (km <= 10) {
    valorKm = km * 0.70;
    if (minuto <= 20) {
      valorMinuto = minuto * 0.50;
    } else {
      valorMinuto = minuto * 0.30;
    }
  } else {
    valorKm = km * 0.50;
    if (minuto <= 20) {
      valorMinuto = minuto * 0.50;
    } else {
      valorMinuto = minuto * 0.30;
    }
  }
  total = valorKm + valorMinuto;
  print("Total a pagar: R\$ ${total.toStringAsFixed(2)}");
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(double.parse(inputs[0]), double.parse(inputs[1]));
}