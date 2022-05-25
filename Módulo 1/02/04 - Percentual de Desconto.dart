import 'dart:io';

void main() {
  stdout.write("Informe a Porcentagem: ");
  final porcentagemInt = int.parse(stdin.readLineSync().toString());
  stdout.write("Informe o Preço: ");
  final precoInt = int.parse(stdin.readLineSync().toString());
  print("O Preço é: R\$ $precoInt");
  print("O Desconto de ${porcentagemInt.toString()} é: R\$ ${precoInt * porcentagemInt / 100}");
  print("O Preço com desconto é: ${precoInt - (precoInt * porcentagemInt / 100)}");
}