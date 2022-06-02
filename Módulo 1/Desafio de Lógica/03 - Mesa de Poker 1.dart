import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num valorMinimo, num valorMaximo, List jogadores) {

  print("Valor minimo da mesa: R\$ $valorMinimo");
  print("Valor maximo da mesa: R\$ $valorMaximo\n");
  print("Jogadores da mesa:");
  for (var i = 0; i < jogadores.length; i++) {
    if (jogadores[i]['valor'] >= valorMinimo && jogadores[i]['valor'] <= valorMaximo) {
      print("${jogadores[i]['nome']}");
    }

  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  List jogadores = [];
  for (int i = 2; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {};
    jogador["nome"] = inputs[i];
    jogador["valor"] = int.parse(inputs[++i]);
    jogadores.add(jogador);
  }
  solucao(double.parse(inputs[0]), double.parse(inputs[1]), jogadores);
}