import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num numero, num limiteInferior, num limiteSuperior) {
  if (numero >= limiteInferior && numero <= limiteSuperior) {
    print('Pertence');
  } else {
    print('Nao pertence');
  }
}


void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(num.parse(inputs[0]), num.parse(inputs[1]), num.parse(inputs[2]));
}