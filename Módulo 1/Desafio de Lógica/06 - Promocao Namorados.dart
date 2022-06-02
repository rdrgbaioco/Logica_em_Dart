import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<double> carrinhoCompras) {

  if (carrinhoCompras.length >= 3) {
    carrinhoCompras.sort();
    carrinhoCompras[0] = carrinhoCompras[0] * 0.5;
    print("Total: R\$ ${carrinhoCompras.reduce((a, b) => a + b).toStringAsFixed(2)}");
  } else {
    double total = 0;
    for (var i = 0; i < carrinhoCompras.length; i++) {
      total += carrinhoCompras[i];
    }
    print("Total: R\$ ${total.toStringAsFixed(2)}");
  }

}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(inputs.map((element) => double.parse(element)).toList());
}