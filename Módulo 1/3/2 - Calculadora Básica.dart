import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Informe um Valor: ");
  final valor1 = double.parse(stdin.readLineSync().toString());
  stdout.write("Agora outro Valor: ");
  final valor2 = double.parse(stdin.readLineSync().toString());
  stdout.write("Informe a Operação: ");
  final operacao = stdin.readLineSync(encoding: utf8)!.toUpperCase();

    if (operacao == 'ADIÇÃO' || operacao == '+') {
    final soma = valor1 + valor2;
    print(soma.toStringAsFixed(2));
  } else if (operacao == 'SUBTRAÇÃO' || operacao == '-') {
    final subtracao = valor1 - valor2;
    print(subtracao.toStringAsFixed(2));
  } else if (operacao == 'MULTIPLICAÇÃO' || operacao == '*') {
    final multiplicacao = valor1 * valor2;
    print(multiplicacao.toStringAsFixed(2));
  } else if (operacao == 'DIVISÃO' || operacao == '/') {
    final divisao = valor1 / valor2;
    print(divisao.toStringAsFixed(2));
  } else {
    print('Operação Inválida');
  }



  somarValores() {
    final soma = valor1 + valor2;
    return print(soma);
  }

}