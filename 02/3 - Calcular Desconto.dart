import 'dart:io';

void main() {
  stdout.write("Informe o Preço: ");
  final precoInt = int.parse(stdin.readLineSync().toString());
  final desconto = 10;
  print("O Preço é: R\$ $precoInt");
  print("O Desconto de 10% é: R\$ ${precoInt * desconto / 100}");
  print("O Preço com desconto é: ${precoInt - (precoInt * desconto / 100)}");
}