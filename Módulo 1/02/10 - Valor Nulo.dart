import 'dart:io';

void main() {
  stdout.write("Informe um Valor: ");
  final valor = stdin.readLineSync().toString();
  print(valor.isEmpty ? "NullPointerException: Erro ao acessar um valor nulo na memória" : "Valor Informado: $valor");
}