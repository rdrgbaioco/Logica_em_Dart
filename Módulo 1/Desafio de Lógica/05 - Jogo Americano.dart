import 'dart:async';
import 'dart:io';
import 'dart:convert';

// Amanda 2 Sabrina 1 Samanta 1 Carina 2 Beatriz 3

void solucao(List jogadores) {
  int total = 0;
  String selecionado = "";
  List numeros = jogadores.map((jogador) => jogador['numero']).toList();
  List nomes = jogadores.map((jogador) => jogador['nome']).toList();

  for (int i = 0; i < numeros.length; i++) {

    total += int.parse(numeros[i].toString());
  }

  if (total <= nomes.length) {
    for (int i = 0; i < total; i++) {
      selecionado = nomes[i];
    }
  } else {
    final int resto = total % nomes.length;
    for (int i = 0; i < nomes.length; i++) {
      selecionado = nomes[i];
    }
    for (int i = 0; i < resto; i++) {
      selecionado = nomes[i];
    }

  }

  print("Resultado: $total");
  print("Goleiro(a): $selecionado");
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  List jogadores = [];
  for (int i = 0; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {
      "nome": inputs[i],
      "numero": int.parse(inputs[i + 1])
    };
    jogadores.add(jogador);
    i++;
  }

  solucao(jogadores);
}