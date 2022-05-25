import 'dart:io';

class Calculadora {
  double valora;
  double valorb;

  Calculadora({required this.valora, required this.valorb}) {

  }

  double soma() {
    return this.valora + this.valorb;
  }
  double subtracao() {
    return this.valora - this.valorb;
  }
  double multiplicacao() {
    return this.valora * this.valorb;
  }
  double divisao() {
    return this.valora / this.valorb;
  }
}

class Tela extends Calculadora {
  Tela({required super.valora, required super.valorb});

  void exibir() {
    print("A soma é: ${super.soma()}");
    print("A subtração é: ${super.subtracao()}");
    print("A multiplicação é: ${super.multiplicacao()}");
    print("A divisão é: ${super.divisao()}");
  }
}

void main() {
  stdout.write("Informe um Valor: ");
  final valora = double.parse(stdin.readLineSync().toString());
  stdout.write("Informe outro Valor: \n");
  final valorb = double.parse(stdin.readLineSync().toString());
  var tela = Tela(valora: valora, valorb: valorb).exibir();
}