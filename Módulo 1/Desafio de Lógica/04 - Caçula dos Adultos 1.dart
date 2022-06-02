import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  List<int> maiores = idades.where((idade) => idade >= 18).toList();
  maiores.sort();
  print(maiores.first);
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs.map((s) => int.parse(s)).toList());
}