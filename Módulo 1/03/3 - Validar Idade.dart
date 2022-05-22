import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("Informe seu Nome: ");
  final nome = stdin.readLineSync(encoding: utf8);
  stdout.write("Informe a data de nascimento (DD/MM/AAAA): ");
  final nascimento = stdin.readLineSync() ?? '';
  final nascimentoSplit = nascimento.split('/');
  final dia = nascimentoSplit[0];
  final mes = nascimentoSplit[1];
  final ano = nascimentoSplit[2];
  final idade = DateTime.now().difference(DateTime(int.parse(ano), int.parse(mes), int.parse(dia))).inDays / 365;

  if (idade >= 18) {
    print('Olá $nome, você tem ${idade.toStringAsFixed(0)} anos, pode dirigir.');
  } else {
    print('Olá $nome, você tem ${idade.toStringAsFixed(0)} anos, não pode dirigir.');
  }
}