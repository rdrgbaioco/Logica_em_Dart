import 'dart:io';

void main() {
  stdout.write("Informe um Valor: ");
  final valor1 = int.parse(stdin.readLineSync().toString());
  stdout.write("Agora outro Valor: ");
  final valor2 = int.parse(stdin.readLineSync().toString());

  void somarValores() {
    final soma = valor1 + valor2;
    print(soma);
  }
  final somar = somarValores();
}